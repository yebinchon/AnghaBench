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
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct commit_list* FUNC0 (int) ; 

struct commit_list **FUNC1(struct commit *commit,
					struct commit_list **next)
{
	struct commit_list *new_commit = FUNC0(sizeof(struct commit_list));
	new_commit->item = commit;
	*next = new_commit;
	new_commit->next = NULL;
	return &new_commit->next;
}