#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stack {int dummy; } ;
struct bio {int bio_flags; int /*<<< orphan*/  bio_children; int /*<<< orphan*/  bio_attribute; int /*<<< orphan*/  bio_ma_offset; int /*<<< orphan*/  bio_ma_n; int /*<<< orphan*/  bio_ma; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_offset; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_cmd; struct bio* bio_parent; } ;

/* Variables and functions */
 int BIO_UNMAPPED ; 
 int BIO_VLIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct stack*,int) ; 
 int KTR_COMPILE ; 
 int KTR_GEOM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  biozone ; 
 int ktr_mask ; 
 int /*<<< orphan*/  FUNC2 (struct stack*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int) ; 

struct bio *
FUNC4(struct bio *bp)
{
	struct bio *bp2;

	bp2 = FUNC3(biozone, M_WAITOK | M_ZERO);
	bp2->bio_flags = bp->bio_flags & (BIO_UNMAPPED | BIO_VLIST);
	bp2->bio_parent = bp;
	bp2->bio_cmd = bp->bio_cmd;
	bp2->bio_length = bp->bio_length;
	bp2->bio_offset = bp->bio_offset;
	bp2->bio_data = bp->bio_data;
	bp2->bio_ma = bp->bio_ma;
	bp2->bio_ma_n = bp->bio_ma_n;
	bp2->bio_ma_offset = bp->bio_ma_offset;
	bp2->bio_attribute = bp->bio_attribute;
	bp->bio_children++;
#ifdef KTR
	if ((KTR_COMPILE & KTR_GEOM) && (ktr_mask & KTR_GEOM)) {
		struct stack st;

		CTR2(KTR_GEOM, "g_duplicate_bio(%p): %p", bp, bp2);
		stack_save(&st);
		CTRSTACK(KTR_GEOM, &st, 3);
	}
#endif
	return(bp2);
}