#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {scalar_t__ link_type; TYPE_2__ data; struct libalias* la; } ;
struct TYPE_3__ {scalar_t__ fwhole; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 scalar_t__ LINK_TCP ; 
 int /*<<< orphan*/  FUNC3 (struct alias_link*) ; 

__attribute__((used)) static struct alias_link *
FUNC4(struct alias_link *old_lnk,
    struct in_addr src_addr,
    struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short src_port,
    u_short dst_port,
    int alias_port_param,	/* if less than zero, alias   */
    int link_type)
{				/* port will be automatically *//* chosen.
				 * If greater than    */
	struct alias_link *new_lnk;	/* zero, equal to alias port  */
	struct libalias *la = old_lnk->la;

	FUNC2(la);
	new_lnk = FUNC0(la, src_addr, dst_addr, alias_addr,
	    src_port, dst_port, alias_port_param,
	    link_type);
#ifndef NO_FW_PUNCH
	if (new_lnk != NULL &&
	    old_lnk->link_type == LINK_TCP &&
	    old_lnk->data.tcp->fwhole > 0) {
		FUNC3(new_lnk);
	}
#endif
	FUNC1(old_lnk);
	return (new_lnk);
}