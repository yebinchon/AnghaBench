#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct revindex_entry {int offset; int /*<<< orphan*/  nr; } ;
struct packed_git {int index_version; } ;
struct pack_window {int dummy; } ;
struct TYPE_6__ {int offset; int /*<<< orphan*/  oid; } ;
struct object_entry {int in_pack_offset; int in_pack_header_size; TYPE_1__ idx; } ;
struct hashfile {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  header ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  dheader ;
struct TYPE_7__ {unsigned char* hash; } ;
struct TYPE_8__ {int offset; TYPE_2__ oid; } ;
struct TYPE_10__ {TYPE_3__ idx; } ;
struct TYPE_9__ {unsigned int rawsz; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct object_entry*) ; 
 struct packed_git* FUNC1 (struct object_entry*) ; 
 int MAX_PACK_OBJECT_HEADER ; 
 int OBJ_OFS_DELTA ; 
 int OBJ_REF_DELTA ; 
 unsigned long FUNC2 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ allow_ofs_delta ; 
 scalar_t__ FUNC4 (struct packed_git*,struct pack_window**,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct packed_git*,struct pack_window**,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct hashfile*,struct packed_git*,struct pack_window**,int,int) ; 
 unsigned int FUNC7 (unsigned char*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct revindex_entry* FUNC9 (struct packed_git*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hashfile*,unsigned char*,unsigned int const) ; 
 int FUNC11 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pack_to_stdout ; 
 int /*<<< orphan*/  reused ; 
 int /*<<< orphan*/  reused_delta ; 
 TYPE_4__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC13 (struct pack_window**) ; 
 int FUNC14 (struct hashfile*,struct object_entry*,unsigned long,int) ; 

__attribute__((used)) static off_t FUNC15(struct hashfile *f, struct object_entry *entry,
				unsigned long limit, int usable_delta)
{
	struct packed_git *p = FUNC1(entry);
	struct pack_window *w_curs = NULL;
	struct revindex_entry *revidx;
	off_t offset;
	enum object_type type = FUNC11(entry);
	off_t datalen;
	unsigned char header[MAX_PACK_OBJECT_HEADER],
		      dheader[MAX_PACK_OBJECT_HEADER];
	unsigned hdrlen;
	const unsigned hashsz = the_hash_algo->rawsz;
	unsigned long entry_size = FUNC2(entry);

	if (FUNC0(entry))
		type = (allow_ofs_delta && FUNC0(entry)->idx.offset) ?
			OBJ_OFS_DELTA : OBJ_REF_DELTA;
	hdrlen = FUNC7(header, sizeof(header),
					      type, entry_size);

	offset = entry->in_pack_offset;
	revidx = FUNC9(p, offset);
	datalen = revidx[1].offset - offset;
	if (!pack_to_stdout && p->index_version > 1 &&
	    FUNC4(p, &w_curs, offset, datalen, revidx->nr)) {
		FUNC8(FUNC3("bad packed object CRC for %s"),
		      FUNC12(&entry->idx.oid));
		FUNC13(&w_curs);
		return FUNC14(f, entry, limit, usable_delta);
	}

	offset += entry->in_pack_header_size;
	datalen -= entry->in_pack_header_size;

	if (!pack_to_stdout && p->index_version == 1 &&
	    FUNC5(p, &w_curs, offset, datalen, entry_size)) {
		FUNC8(FUNC3("corrupt packed object for %s"),
		      FUNC12(&entry->idx.oid));
		FUNC13(&w_curs);
		return FUNC14(f, entry, limit, usable_delta);
	}

	if (type == OBJ_OFS_DELTA) {
		off_t ofs = entry->idx.offset - FUNC0(entry)->idx.offset;
		unsigned pos = sizeof(dheader) - 1;
		dheader[pos] = ofs & 127;
		while (ofs >>= 7)
			dheader[--pos] = 128 | (--ofs & 127);
		if (limit && hdrlen + sizeof(dheader) - pos + datalen + hashsz >= limit) {
			FUNC13(&w_curs);
			return 0;
		}
		FUNC10(f, header, hdrlen);
		FUNC10(f, dheader + pos, sizeof(dheader) - pos);
		hdrlen += sizeof(dheader) - pos;
		reused_delta++;
	} else if (type == OBJ_REF_DELTA) {
		if (limit && hdrlen + hashsz + datalen + hashsz >= limit) {
			FUNC13(&w_curs);
			return 0;
		}
		FUNC10(f, header, hdrlen);
		FUNC10(f, FUNC0(entry)->idx.oid.hash, hashsz);
		hdrlen += hashsz;
		reused_delta++;
	} else {
		if (limit && hdrlen + datalen + hashsz >= limit) {
			FUNC13(&w_curs);
			return 0;
		}
		FUNC10(f, header, hdrlen);
	}
	FUNC6(f, p, &w_curs, offset, datalen);
	FUNC13(&w_curs);
	reused++;
	return hdrlen + datalen;
}