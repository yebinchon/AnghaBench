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
struct unrhdr {int /*<<< orphan*/  alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static __inline void *
FUNC1(struct unrhdr *uh, void **p1, void **p2)
{
	void *p;

	uh->alloc++;
	FUNC0(*p1 != NULL || *p2 != NULL, ("Out of cached memory"));
	if (*p1 != NULL) {
		p = *p1;
		*p1 = NULL;
		return (p);
	} else {
		p = *p2;
		*p2 = NULL;
		return (p);
	}
}