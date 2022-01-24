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
struct diff_filespec {int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
struct combine_diff_path {int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct combine_diff_path *one,
			  const struct diff_filespec *two)
{
	if (!FUNC0(one->mode) && !FUNC0(two->mode))
		return FUNC2(one->path, two->path);

	return FUNC1(one->path, FUNC3(one->path), one->mode,
				 two->path, FUNC3(two->path), two->mode);
}