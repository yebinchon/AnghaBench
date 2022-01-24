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
struct rib_head {int /*<<< orphan*/  rnh_addaddr; } ;

/* Variables and functions */
 int _in_rt_was_here ; 
 int /*<<< orphan*/  in_addroute ; 
 struct rib_head* FUNC0 (int) ; 

int
FUNC1(void **head, int off)
{
	struct rib_head *rh;

	rh = FUNC0(32);
	if (rh == NULL)
		return (0);

	rh->rnh_addaddr = in_addroute;
	*head = (void *)rh;

	if (_in_rt_was_here == 0 ) {
		_in_rt_was_here = 1;
	}
	return 1;
}