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
struct progress {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct progress*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct progress*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsck_cruft ; 
 int /*<<< orphan*/  fsck_loose ; 
 int /*<<< orphan*/  fsck_subdir ; 
 scalar_t__ show_progress ; 
 struct progress* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct progress**) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC6(const char *path)
{
	struct progress *progress = NULL;

	if (verbose)
		FUNC3(stderr, FUNC0("Checking object directory"));

	if (show_progress)
		progress = FUNC4(FUNC0("Checking object directories"), 256);

	FUNC2(path, fsck_loose, fsck_cruft, fsck_subdir,
				      progress);
	FUNC1(progress, 256);
	FUNC5(&progress);
}