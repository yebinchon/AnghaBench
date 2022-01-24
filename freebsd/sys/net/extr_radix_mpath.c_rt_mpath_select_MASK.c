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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtentry {int dummy; } ;
struct radix_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct radix_node*) ; 
 struct rtentry* FUNC1 (struct rtentry*,int /*<<< orphan*/ ) ; 

struct rtentry *
FUNC2(struct rtentry *rte, uint32_t hash)
{
	if (FUNC0((struct radix_node *)rte) == NULL)
		return (rte);

	return (FUNC1(rte, hash));
}