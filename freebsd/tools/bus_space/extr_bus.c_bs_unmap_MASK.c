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
struct resource {int rid; scalar_t__ ptr; int fd; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (int) ; 

int
FUNC3(int rid)
{
	struct resource *r;

	r = FUNC2(rid);
	if (r == NULL)
		return (0);
	if (r->rid == -1) {
		if (r->ptr != MAP_FAILED)
			FUNC1(r->ptr, r->size);
		FUNC0(r->fd);
	}
	r->fd = -1;
	return (1);
}