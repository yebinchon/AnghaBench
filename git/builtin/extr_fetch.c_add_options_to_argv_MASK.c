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
struct argv_array {int dummy; } ;

/* Variables and functions */
 scalar_t__ RECURSE_SUBMODULES_ON ; 
 scalar_t__ RECURSE_SUBMODULES_ON_DEMAND ; 
 scalar_t__ TAGS_SET ; 
 scalar_t__ TAGS_UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*) ; 
 scalar_t__ dry_run ; 
 scalar_t__ force ; 
 scalar_t__ keep ; 
 int prune ; 
 int prune_tags ; 
 scalar_t__ recurse_submodules ; 
 scalar_t__ tags ; 
 scalar_t__ update_head_ok ; 
 int verbosity ; 

__attribute__((used)) static void FUNC1(struct argv_array *argv)
{
	if (dry_run)
		FUNC0(argv, "--dry-run");
	if (prune != -1)
		FUNC0(argv, prune ? "--prune" : "--no-prune");
	if (prune_tags != -1)
		FUNC0(argv, prune_tags ? "--prune-tags" : "--no-prune-tags");
	if (update_head_ok)
		FUNC0(argv, "--update-head-ok");
	if (force)
		FUNC0(argv, "--force");
	if (keep)
		FUNC0(argv, "--keep");
	if (recurse_submodules == RECURSE_SUBMODULES_ON)
		FUNC0(argv, "--recurse-submodules");
	else if (recurse_submodules == RECURSE_SUBMODULES_ON_DEMAND)
		FUNC0(argv, "--recurse-submodules=on-demand");
	if (tags == TAGS_SET)
		FUNC0(argv, "--tags");
	else if (tags == TAGS_UNSET)
		FUNC0(argv, "--no-tags");
	if (verbosity >= 2)
		FUNC0(argv, "-v");
	if (verbosity >= 1)
		FUNC0(argv, "-v");
	else if (verbosity < 0)
		FUNC0(argv, "-q");

}