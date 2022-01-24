#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* if_pseudo_t ;
struct TYPE_4__ {scalar_t__ ip_on_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ip_list ; 

__attribute__((used)) static void
FUNC3(if_pseudo_t ip)
{
	FUNC1();
	if (ip->ip_on_list) {
		FUNC0(ip, ip_list);
		ip->ip_on_list = 0;
	}
	FUNC2();
}