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
struct rt_addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_ALL_FIBS ; 
 int /*<<< orphan*/  FUNC0 (int,struct rt_addrinfo*,int,int,int /*<<< orphan*/ ) ; 

void
FUNC1(int type, struct rt_addrinfo *rtinfo, int flags, int error)
{

	FUNC0(type, rtinfo, flags, error, RT_ALL_FIBS);
}