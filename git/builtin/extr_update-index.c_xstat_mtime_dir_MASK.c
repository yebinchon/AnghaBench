#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ mtime_dir ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC3(struct stat *st)
{
	if (FUNC2(mtime_dir.buf, st))
		FUNC1(FUNC0("failed to stat %s"), mtime_dir.buf);
	return 0;
}