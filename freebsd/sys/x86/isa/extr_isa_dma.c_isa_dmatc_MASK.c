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

/* Variables and functions */
 int /*<<< orphan*/  DMA1_STATUS ; 
 int /*<<< orphan*/  DMA2_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(int chan)
{

	if (chan < 4)
		return(FUNC0(DMA1_STATUS) & (1 << chan));
	else
		return(FUNC0(DMA2_STATUS) & (1 << (chan & 3)));
}