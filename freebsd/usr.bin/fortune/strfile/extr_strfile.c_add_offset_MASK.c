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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  beoff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int Num_pts ; 
 int /*<<< orphan*/  STORING_PTRS ; 
 int /*<<< orphan*/ * Seekpts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(FILE *fp, off_t off)
{
	off_t beoff;

	if (!STORING_PTRS) {
		beoff = FUNC2(off);
		FUNC1(&beoff, 1, sizeof(beoff), fp);
	} else {
		FUNC0(Seekpts, Num_pts + 1);
		Seekpts[Num_pts] = off;
	}
	Num_pts++;
}