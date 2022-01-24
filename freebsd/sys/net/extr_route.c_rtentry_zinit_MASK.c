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
struct rtentry {int /*<<< orphan*/ * rt_pksent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(void *mem, int size, int how)
{
	struct rtentry *rt = mem;

	rt->rt_pksent = FUNC1(how);
	if (rt->rt_pksent == NULL)
		return (ENOMEM);

	FUNC0(rt);

	return (0);
}