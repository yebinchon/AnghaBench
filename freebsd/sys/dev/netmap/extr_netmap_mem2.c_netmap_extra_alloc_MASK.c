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
typedef  scalar_t__ uint32_t ;
struct netmap_mem_d {int dummy; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 scalar_t__* FUNC2 (struct netmap_mem_d*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

uint32_t
FUNC5(struct netmap_adapter *na, uint32_t *head, uint32_t n)
{
	struct netmap_mem_d *nmd = na->nm_mem;
	uint32_t i, pos = 0; /* opaque, scan position in the bitmap */

	FUNC0(nmd);

	*head = 0;	/* default, 'null' index ie empty list */
	for (i = 0 ; i < n; i++) {
		uint32_t cur = *head;	/* save current head */
		uint32_t *p = FUNC2(nmd, &pos, head);
		if (p == NULL) {
			FUNC4("no more buffers after %d of %d", i, n);
			*head = cur; /* restore */
			break;
		}
		FUNC3(5, "allocate buffer %d -> %d", *head, cur);
		*p = cur; /* link to previous head */
	}

	FUNC1(nmd);

	return i;
}