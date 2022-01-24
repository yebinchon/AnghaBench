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
struct mtx {int dummy; } ;
struct bio {int bio_flags; scalar_t__ bio_error; } ;

/* Variables and functions */
 int BIO_DONE ; 
 int BIO_ERROR ; 
 int EIO ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct mtx*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 struct mtx* FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 

int
FUNC4(struct bio *bp, const char *wchan)
{
	struct mtx *mtxp;

	mtxp = FUNC2(mtxpool_sleep, bp);
	FUNC1(mtxp);
	while ((bp->bio_flags & BIO_DONE) == 0)
		FUNC0(bp, mtxp, PRIBIO, wchan, 0);
	FUNC3(mtxp);
	if (bp->bio_error != 0)
		return (bp->bio_error);
	if (!(bp->bio_flags & BIO_ERROR))
		return (0);
	return (EIO);
}