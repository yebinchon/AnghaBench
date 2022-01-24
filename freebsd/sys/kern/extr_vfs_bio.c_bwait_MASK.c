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
typedef  int /*<<< orphan*/  u_char ;
struct mtx {int dummy; } ;
struct buf {int b_flags; } ;

/* Variables and functions */
 int B_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct buf*,struct mtx*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 struct mtx* FUNC2 (int /*<<< orphan*/ ,struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 

void
FUNC4(struct buf *bp, u_char pri, const char *wchan)
{
	struct mtx *mtxp;

	mtxp = FUNC2(mtxpool_sleep, bp);
	FUNC1(mtxp);
	while ((bp->b_flags & B_DONE) == 0)
		FUNC0(bp, mtxp, pri, wchan, 0);
	FUNC3(mtxp);
}