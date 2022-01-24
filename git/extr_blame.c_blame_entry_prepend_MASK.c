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
struct blame_origin {int dummy; } ;
struct blame_entry {long lno; long num_lines; long s_lno; struct blame_entry* next; struct blame_origin* suspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blame_origin*) ; 
 struct blame_entry* FUNC1 (int,int) ; 

struct blame_entry *FUNC2(struct blame_entry *head,
					long start, long end,
					struct blame_origin *o)
{
	struct blame_entry *new_head = FUNC1(1, sizeof(struct blame_entry));
	new_head->lno = start;
	new_head->num_lines = end - start;
	new_head->suspect = o;
	new_head->s_lno = start;
	new_head->next = head;
	FUNC0(o);
	return new_head;
}