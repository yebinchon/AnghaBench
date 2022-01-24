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
struct bio {int bio_flags; scalar_t__ bio_resid; int /*<<< orphan*/  bio_error; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(struct bio *bp)
{

    FUNC1(1);
	
    if (bp->bio_flags & BIO_ERROR)
	bp->bio_error = EIO;
    else
	bp->bio_resid = 0;

    FUNC0(bp);
}