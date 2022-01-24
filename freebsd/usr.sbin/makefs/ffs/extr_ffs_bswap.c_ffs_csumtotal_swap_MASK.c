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
struct csum_total {void* cs_nffree; void* cs_nifree; void* cs_nbfree; void* cs_ndir; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

void
FUNC1(struct csum_total *o, struct csum_total *n)
{
	n->cs_ndir = FUNC0(o->cs_ndir);
	n->cs_nbfree = FUNC0(o->cs_nbfree);
	n->cs_nifree = FUNC0(o->cs_nifree);
	n->cs_nffree = FUNC0(o->cs_nffree);
}