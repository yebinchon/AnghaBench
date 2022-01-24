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
typedef  int uint32_t ;
struct netmap_obj_pool {int objtotal; int* bitmap; int /*<<< orphan*/  objfree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

__attribute__((used)) static int
FUNC1(struct netmap_obj_pool *p, uint32_t j)
{
	uint32_t *ptr, mask;

	if (j >= p->objtotal) {
		FUNC0("invalid index %u, max %u", j, p->objtotal);
		return 1;
	}
	ptr = &p->bitmap[j / 32];
	mask = (1 << (j % 32));
	if (*ptr & mask) {
		FUNC0("ouch, double free on buffer %d", j);
		return 1;
	} else {
		*ptr |= mask;
		p->objfree++;
		return 0;
	}
}