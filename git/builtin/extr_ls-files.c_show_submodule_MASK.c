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
struct submodule {int dummy; } ;
struct repository {int dummy; } ;
struct dir_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 
 scalar_t__ FUNC2 (struct repository*) ; 
 scalar_t__ FUNC3 (struct repository*,struct repository*,struct submodule const*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct dir_struct*) ; 
 struct submodule* FUNC5 (struct repository*,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC6(struct repository *superproject,
			   struct dir_struct *dir, const char *path)
{
	struct repository subrepo;
	const struct submodule *sub = FUNC5(superproject,
							  &null_oid, path);

	if (FUNC3(&subrepo, superproject, sub))
		return;

	if (FUNC2(&subrepo) < 0)
		FUNC0("index file corrupt");

	FUNC4(&subrepo, dir);

	FUNC1(&subrepo);
}