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
struct sort_level {int dummy; } ;
struct level_stack {struct level_stack* next; struct sort_level* sl; } ;

/* Variables and functions */
 struct level_stack* g_ls ; 
 int /*<<< orphan*/  FUNC0 (struct level_stack*) ; 

__attribute__((used)) static inline struct sort_level*
FUNC1(void)
{
	struct sort_level *sl;

	if (g_ls) {
		struct level_stack *saved_ls;

		sl = g_ls->sl;
		saved_ls = g_ls;
		g_ls = g_ls->next;
		FUNC0(saved_ls);
	} else
		sl = NULL;

	return (sl);
}