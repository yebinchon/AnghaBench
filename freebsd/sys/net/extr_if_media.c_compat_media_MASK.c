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
 scalar_t__ IFM_ETHER ; 
 int IFM_ETH_XTYPE ; 
 int IFM_OTHER ; 
 int FUNC0 (int) ; 
 int IFM_TMASK ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(int media)
{

	if (FUNC1(media) == IFM_ETHER && FUNC0(media) > IFM_OTHER) {
		media &= ~(IFM_ETH_XTYPE|IFM_TMASK);
		media |= IFM_OTHER;
	}
	return (media);
}