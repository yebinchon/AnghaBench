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
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCECLOSE ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct mount *mp, int mntflags)
{
	int error;

	error = FUNC0(mp, 0, (mntflags & MNT_FORCE) ?  FORCECLOSE : 0,
	    curthread);
	return (error);
}