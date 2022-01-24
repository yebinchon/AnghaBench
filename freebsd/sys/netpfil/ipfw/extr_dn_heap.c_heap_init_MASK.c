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
struct dn_heap {int ofs; scalar_t__ elements; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dn_heap*,int) ; 

int
FUNC1(struct dn_heap *h, int size, int ofs)
{
	if (FUNC0(h, size))
		return 1;
	h->elements = 0;
	h->ofs = ofs;
	return 0;
}