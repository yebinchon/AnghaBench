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
 int IFF_MULTICAST ; 
 int IFF_POINTOPOINT ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0("tun0", "192.0.2.5", "255.255.255.255", "192.0.2.6",
	    IFF_UP | IFF_RUNNING | IFF_POINTOPOINT | IFF_MULTICAST, false);
	FUNC1("tun0", "2001:db8::5",
	    "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
	    "2001:db8::6",
	    IFF_UP | IFF_RUNNING | IFF_POINTOPOINT | IFF_MULTICAST, 0, false);
}