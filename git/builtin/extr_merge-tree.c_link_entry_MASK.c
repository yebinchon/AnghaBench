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
struct traverse_info {int dummy; } ;
struct name_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct merge_list {char* path; struct merge_list* link; } ;

/* Variables and functions */
 struct merge_list* FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (struct traverse_info const*,struct name_entry*) ; 

__attribute__((used)) static struct merge_list *FUNC2(unsigned stage, const struct traverse_info *info, struct name_entry *n, struct merge_list *entry)
{
	const char *path;
	struct merge_list *link;

	if (!n->mode)
		return entry;
	if (entry)
		path = entry->path;
	else
		path = FUNC1(info, n);
	link = FUNC0(stage, n->mode, &n->oid, path);
	link->link = entry;
	return link;
}