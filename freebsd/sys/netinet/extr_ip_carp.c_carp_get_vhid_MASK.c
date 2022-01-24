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
struct ifaddr {TYPE_1__* ifa_carp; } ;
struct TYPE_2__ {int sc_vhid; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct ifaddr *ifa)
{

	if (ifa == NULL || ifa->ifa_carp == NULL)
		return (0);

	return (ifa->ifa_carp->sc_vhid);
}