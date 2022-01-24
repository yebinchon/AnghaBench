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
struct dirlist {struct dirlist* dp_dirp; int /*<<< orphan*/  dp_hosts; struct dirlist* dp_right; struct dirlist* dp_left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dirlist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct dirlist *dp)
{

	if (dp) {
		FUNC2(dp->dp_left);
		FUNC2(dp->dp_right);
		FUNC1(dp->dp_hosts);
		FUNC0(dp->dp_dirp);
		FUNC0(dp);
	}
}