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
struct sglist {int dummy; } ;
struct bio {int bio_flags; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_ma_offset; int /*<<< orphan*/  bio_ma; int /*<<< orphan*/  bio_data; } ;

/* Variables and functions */
 int BIO_UNMAPPED ; 
 int FUNC0 (struct sglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct sglist *sg, struct bio *bp)
{
	int error;

	if ((bp->bio_flags & BIO_UNMAPPED) == 0)
		error = FUNC0(sg, bp->bio_data, bp->bio_bcount);
	else
		error = FUNC1(sg, bp->bio_ma,
		    bp->bio_ma_offset, bp->bio_bcount);
	return (error);
}