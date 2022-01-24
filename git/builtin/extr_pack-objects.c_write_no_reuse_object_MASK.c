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
struct TYPE_8__ {int offset; int /*<<< orphan*/  oid; } ;
struct object_entry {long z_delta_size; TYPE_3__ idx; int /*<<< orphan*/ * delta_data; } ;
struct hashfile {int dummy; } ;
struct git_istream {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  header ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  dheader ;
struct TYPE_6__ {void* hash; } ;
struct TYPE_7__ {int offset; TYPE_1__ oid; } ;
struct TYPE_10__ {TYPE_2__ idx; } ;
struct TYPE_9__ {unsigned int rawsz; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct object_entry*) ; 
 unsigned long FUNC1 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_PACK_OBJECT_HEADER ; 
 scalar_t__ OBJ_BLOB ; 
 int OBJ_OFS_DELTA ; 
 int OBJ_REF_DELTA ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ allow_ofs_delta ; 
 int /*<<< orphan*/  big_file_threshold ; 
 int /*<<< orphan*/  FUNC4 (struct git_istream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (void**,unsigned long) ; 
 unsigned int FUNC7 (unsigned char*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct hashfile*,void*,unsigned int const) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct object_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct git_istream* FUNC14 (int /*<<< orphan*/ *,int*,unsigned long*,int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 TYPE_4__* the_hash_algo ; 
 int /*<<< orphan*/  to_pack ; 
 unsigned long FUNC16 (struct git_istream*,struct hashfile*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC17(struct hashfile *f, struct object_entry *entry,
					   unsigned long limit, int usable_delta)
{
	unsigned long size, datalen;
	unsigned char header[MAX_PACK_OBJECT_HEADER],
		      dheader[MAX_PACK_OBJECT_HEADER];
	unsigned hdrlen;
	enum object_type type;
	void *buf;
	struct git_istream *st = NULL;
	const unsigned hashsz = the_hash_algo->rawsz;

	if (!usable_delta) {
		if (FUNC12(entry) == OBJ_BLOB &&
		    FUNC11(&to_pack, entry, big_file_threshold) &&
		    (st = FUNC14(&entry->idx.oid, &type, &size, NULL)) != NULL)
			buf = NULL;
		else {
			buf = FUNC15(&entry->idx.oid, &type, &size);
			if (!buf)
				FUNC5(FUNC3("unable to read %s"),
				    FUNC13(&entry->idx.oid));
		}
		/*
		 * make sure no cached delta data remains from a
		 * previous attempt before a pack split occurred.
		 */
		FUNC2(entry->delta_data);
		entry->z_delta_size = 0;
	} else if (entry->delta_data) {
		size = FUNC1(entry);
		buf = entry->delta_data;
		entry->delta_data = NULL;
		type = (allow_ofs_delta && FUNC0(entry)->idx.offset) ?
			OBJ_OFS_DELTA : OBJ_REF_DELTA;
	} else {
		buf = FUNC9(entry);
		size = FUNC1(entry);
		type = (allow_ofs_delta && FUNC0(entry)->idx.offset) ?
			OBJ_OFS_DELTA : OBJ_REF_DELTA;
	}

	if (st)	/* large blob case, just assume we don't compress well */
		datalen = size;
	else if (entry->z_delta_size)
		datalen = entry->z_delta_size;
	else
		datalen = FUNC6(&buf, size);

	/*
	 * The object header is a byte of 'type' followed by zero or
	 * more bytes of length.
	 */
	hdrlen = FUNC7(header, sizeof(header),
					      type, size);

	if (type == OBJ_OFS_DELTA) {
		/*
		 * Deltas with relative base contain an additional
		 * encoding of the relative offset for the delta
		 * base from this object's position in the pack.
		 */
		off_t ofs = entry->idx.offset - FUNC0(entry)->idx.offset;
		unsigned pos = sizeof(dheader) - 1;
		dheader[pos] = ofs & 127;
		while (ofs >>= 7)
			dheader[--pos] = 128 | (--ofs & 127);
		if (limit && hdrlen + sizeof(dheader) - pos + datalen + hashsz >= limit) {
			if (st)
				FUNC4(st);
			FUNC8(buf);
			return 0;
		}
		FUNC10(f, header, hdrlen);
		FUNC10(f, dheader + pos, sizeof(dheader) - pos);
		hdrlen += sizeof(dheader) - pos;
	} else if (type == OBJ_REF_DELTA) {
		/*
		 * Deltas with a base reference contain
		 * additional bytes for the base object ID.
		 */
		if (limit && hdrlen + hashsz + datalen + hashsz >= limit) {
			if (st)
				FUNC4(st);
			FUNC8(buf);
			return 0;
		}
		FUNC10(f, header, hdrlen);
		FUNC10(f, FUNC0(entry)->idx.oid.hash, hashsz);
		hdrlen += hashsz;
	} else {
		if (limit && hdrlen + datalen + hashsz >= limit) {
			if (st)
				FUNC4(st);
			FUNC8(buf);
			return 0;
		}
		FUNC10(f, header, hdrlen);
	}
	if (st) {
		datalen = FUNC16(st, f, &entry->idx.oid);
		FUNC4(st);
	} else {
		FUNC10(f, buf, datalen);
		FUNC8(buf);
	}

	return hdrlen + datalen;
}