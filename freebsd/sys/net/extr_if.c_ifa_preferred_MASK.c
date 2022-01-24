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
struct ifaddr {scalar_t__ ifa_carp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ifaddr*) ; 
 scalar_t__ FUNC1 (struct ifaddr*) ; 
 scalar_t__ FUNC2 (struct ifaddr*) ; 

int
FUNC3(struct ifaddr *cur, struct ifaddr *next)
{

	return (cur->ifa_carp && (!next->ifa_carp ||
	    (FUNC0)(next) && !FUNC0)(cur))));
}