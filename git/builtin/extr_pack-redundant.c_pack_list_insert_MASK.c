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
struct pack_list {struct pack_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pack_list*,struct pack_list*,int) ; 
 struct pack_list* FUNC1 (int) ; 

__attribute__((used)) static inline struct pack_list * FUNC2(struct pack_list **pl,
					   struct pack_list *entry)
{
	struct pack_list *p = FUNC1(sizeof(struct pack_list));
	FUNC0(p, entry, sizeof(struct pack_list));
	p->next = *pl;
	*pl = p;
	return p;
}