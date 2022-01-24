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
struct bhnd_nvstore_path {struct bhnd_nvstore_path* path_str; int /*<<< orphan*/  pending; int /*<<< orphan*/ * index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvstore_path*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct bhnd_nvstore_path *path)
{
	/* Free the per-path index */
	if (path->index != NULL)
		FUNC2(path->index);

	FUNC1(path->pending);
	FUNC0(path->path_str);
	FUNC0(path);
}