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
struct pack_list {scalar_t__ pack; struct pack_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pack_list*,struct pack_list const*,int) ; 
 struct pack_list* FUNC1 (int) ; 

__attribute__((used)) static struct pack_list * FUNC2(const struct pack_list *A,
					       const struct pack_list *B)
{
	struct pack_list *ret;
	const struct pack_list *pl;

	if (A == NULL)
		return NULL;

	pl = B;
	while (pl != NULL) {
		if (A->pack == pl->pack)
			return FUNC2(A->next, B);
		pl = pl->next;
	}
	ret = FUNC1(sizeof(struct pack_list));
	FUNC0(ret, A, sizeof(struct pack_list));
	ret->next = FUNC2(A->next, B);
	return ret;
}