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
struct TYPE_2__ {int /*<<< orphan*/  u_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 size_t UNWIND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 size_t unwind_len ; 
 TYPE_1__* unwind_list ; 

__attribute__((used)) static void
FUNC2(const char *path)
{

	if (unwind_len >= UNWIND_MAX)
		FUNC0(-1, "push_path: one path too many (%s)", path);

	FUNC1(unwind_list[unwind_len].u_path, path, PATH_MAX);
	unwind_len++;
}