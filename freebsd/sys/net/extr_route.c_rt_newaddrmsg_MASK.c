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
struct rtentry {int dummy; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_ALL_FIBS ; 
 int /*<<< orphan*/  FUNC0 (int,struct ifaddr*,int,struct rtentry*,int /*<<< orphan*/ ) ; 

void
FUNC1(int cmd, struct ifaddr *ifa, int error, struct rtentry *rt)
{

	FUNC0(cmd, ifa, error, rt, RT_ALL_FIBS);
}