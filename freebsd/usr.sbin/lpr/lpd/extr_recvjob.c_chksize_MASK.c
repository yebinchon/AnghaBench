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
struct statfs {int f_bavail; int f_bsize; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int minfree ; 
 scalar_t__ FUNC0 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC2(int size)
{
	int64_t spacefree;
	struct statfs sfb;

	if (FUNC0(".", &sfb) < 0) {
		FUNC1(LOG_ERR, "%s: %m", "statfs(\".\")");
		return (1);
	}
	spacefree = sfb.f_bavail * (sfb.f_bsize / 512);
	size = (size + 511) / 512;
	if (minfree + size > spacefree)
		return(0);
	return(1);
}