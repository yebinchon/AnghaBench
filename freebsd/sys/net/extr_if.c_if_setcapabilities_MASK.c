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
struct ifnet {int if_capabilities; } ;
typedef  scalar_t__ if_t ;

/* Variables and functions */

int
FUNC0(if_t ifp, int capabilities)
{
	((struct ifnet *)ifp)->if_capabilities = capabilities;
	return (0);
}