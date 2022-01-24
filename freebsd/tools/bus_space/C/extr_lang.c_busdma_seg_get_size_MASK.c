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
typedef  unsigned long u_long ;
typedef  int /*<<< orphan*/  busdma_seg_t ;
typedef  unsigned long bus_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 

bus_size_t
FUNC1(busdma_seg_t seg)
{
	u_long size;
	int error;

	error = FUNC0(seg, &size);
	return ((error) ? ~0UL : size);
}