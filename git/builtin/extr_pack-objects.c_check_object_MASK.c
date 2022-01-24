#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct revindex_entry {int /*<<< orphan*/  nr; } ;
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct object_entry {int in_pack_offset; int in_pack_type; unsigned long in_pack_header_size; scalar_t__ type_valid; TYPE_1__ idx; int /*<<< orphan*/  delta_child_idx; int /*<<< orphan*/  delta_sibling_idx; int /*<<< orphan*/  preferred_base; } ;
typedef  int off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int /*<<< orphan*/  rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct packed_git* FUNC1 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ OBJ_BLOB ; 
 scalar_t__ OBJ_COMMIT ; 
#define  OBJ_OFS_DELTA 129 
#define  OBJ_REF_DELTA 128 
 int /*<<< orphan*/  FUNC3 (struct object_entry*,struct object_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_entry*,struct object_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_entry*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct object_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (unsigned char const*,struct object_entry*,struct object_entry**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct revindex_entry* FUNC11 (struct packed_git*,int) ; 
 unsigned long FUNC12 (struct packed_git*,struct pack_window**,int) ; 
 unsigned char* FUNC13 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct object_entry*,int) ; 
 scalar_t__ FUNC15 (struct object_entry*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reuse_delta ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 
 unsigned long FUNC18 (unsigned char*,unsigned long,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC19 (struct pack_window**) ; 
 void* FUNC20 (struct packed_git*,struct pack_window**,int,unsigned long*) ; 

__attribute__((used)) static void FUNC21(struct object_entry *entry)
{
	unsigned long canonical_size;

	if (FUNC1(entry)) {
		struct packed_git *p = FUNC1(entry);
		struct pack_window *w_curs = NULL;
		const unsigned char *base_ref = NULL;
		struct object_entry *base_entry;
		unsigned long used, used_0;
		unsigned long avail;
		off_t ofs;
		unsigned char *buf, c;
		enum object_type type;
		unsigned long in_pack_size;

		buf = FUNC20(p, &w_curs, entry->in_pack_offset, &avail);

		/*
		 * We want in_pack_type even if we do not reuse delta
		 * since non-delta representations could still be reused.
		 */
		used = FUNC18(buf, avail,
						   &type,
						   &in_pack_size);
		if (used == 0)
			goto give_up;

		if (type < 0)
			FUNC0("invalid type %d", type);
		entry->in_pack_type = type;

		/*
		 * Determine if this is a delta and if so whether we can
		 * reuse it or not.  Otherwise let's find out as cheaply as
		 * possible what the actual type and size for this object is.
		 */
		switch (entry->in_pack_type) {
		default:
			/* Not a delta hence we've already got all we need. */
			FUNC14(entry, entry->in_pack_type);
			FUNC7(entry, in_pack_size);
			entry->in_pack_header_size = used;
			if (FUNC15(entry) < OBJ_COMMIT || FUNC15(entry) > OBJ_BLOB)
				goto give_up;
			FUNC19(&w_curs);
			return;
		case OBJ_REF_DELTA:
			if (reuse_delta && !entry->preferred_base)
				base_ref = FUNC20(p, &w_curs,
						entry->in_pack_offset + used, NULL);
			entry->in_pack_header_size = used + the_hash_algo->rawsz;
			break;
		case OBJ_OFS_DELTA:
			buf = FUNC20(p, &w_curs,
				       entry->in_pack_offset + used, NULL);
			used_0 = 0;
			c = buf[used_0++];
			ofs = c & 127;
			while (c & 128) {
				ofs += 1;
				if (!ofs || FUNC2(ofs, 7)) {
					FUNC10(FUNC8("delta base offset overflow in pack for %s"),
					      FUNC17(&entry->idx.oid));
					goto give_up;
				}
				c = buf[used_0++];
				ofs = (ofs << 7) + (c & 127);
			}
			ofs = entry->in_pack_offset - ofs;
			if (ofs <= 0 || ofs >= entry->in_pack_offset) {
				FUNC10(FUNC8("delta base offset out of bound for %s"),
				      FUNC17(&entry->idx.oid));
				goto give_up;
			}
			if (reuse_delta && !entry->preferred_base) {
				struct revindex_entry *revidx;
				revidx = FUNC11(p, ofs);
				if (!revidx)
					goto give_up;
				base_ref = FUNC13(p, revidx->nr);
			}
			entry->in_pack_header_size = used + used_0;
			break;
		}

		if (FUNC9(base_ref, entry, &base_entry)) {
			FUNC14(entry, entry->in_pack_type);
			FUNC7(entry, in_pack_size); /* delta size */
			FUNC6(entry, in_pack_size);

			if (base_entry) {
				FUNC3(entry, base_entry);
				entry->delta_sibling_idx = base_entry->delta_child_idx;
				FUNC4(base_entry, entry);
			} else {
				FUNC5(entry, base_ref);
			}

			FUNC19(&w_curs);
			return;
		}

		if (FUNC15(entry)) {
			off_t delta_pos;

			/*
			 * This must be a delta and we already know what the
			 * final object type is.  Let's extract the actual
			 * object size from the delta header.
			 */
			delta_pos = entry->in_pack_offset + entry->in_pack_header_size;
			canonical_size = FUNC12(p, &w_curs, delta_pos);
			if (canonical_size == 0)
				goto give_up;
			FUNC7(entry, canonical_size);
			FUNC19(&w_curs);
			return;
		}

		/*
		 * No choice but to fall back to the recursive delta walk
		 * with oid_object_info() to find about the object type
		 * at this point...
		 */
		give_up:
		FUNC19(&w_curs);
	}

	FUNC14(entry,
		    FUNC16(the_repository, &entry->idx.oid, &canonical_size));
	if (entry->type_valid) {
		FUNC7(entry, canonical_size);
	} else {
		/*
		 * Bad object type is checked in prepare_pack().  This is
		 * to permit a missing preferred base object to be ignored
		 * as a preferred base.  Doing so can result in a larger
		 * pack file, but the transfer will still take place.
		 */
	}
}