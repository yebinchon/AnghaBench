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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct host_list {struct host_list* next; TYPE_1__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct host_list* hosts ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct in_addr addr)
{
	struct host_list *hp;

	if (!(hp = (struct host_list *)FUNC1(sizeof(struct host_list))))
		FUNC0(1, "no memory");
	hp->addr.s_addr = addr.s_addr;
	hp->next = hosts;
	hosts = hp;
}