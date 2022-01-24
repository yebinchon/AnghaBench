#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bus_dma_tag_common {int domain; TYPE_1__* impl; int /*<<< orphan*/  lowaddr; } ;
typedef  scalar_t__ bus_dma_tag_t ;
struct TYPE_2__ {int (* tag_set_domain ) (scalar_t__) ;} ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int,unsigned long,int /*<<< orphan*/ ) ; 

int
FUNC2(bus_dma_tag_t dmat, int domain)
{
	struct bus_dma_tag_common *tc;

	tc = (struct bus_dma_tag_common *)dmat;
	domain = FUNC1(domain, 0ul, tc->lowaddr);
	/* Only call the callback if it changes. */
	if (domain == tc->domain)
		return (0);
	tc->domain = domain;
	return (tc->impl->tag_set_domain(dmat));
}