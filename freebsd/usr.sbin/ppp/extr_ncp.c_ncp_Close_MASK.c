#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_3__ fsm; } ;
struct TYPE_4__ {TYPE_3__ fsm; } ;
struct ncp {TYPE_2__ ipv6cp; TYPE_1__ ipcp; } ;

/* Variables and functions */
 scalar_t__ ST_CLOSED ; 
 scalar_t__ ST_STARTING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

void
FUNC1(struct ncp *ncp)
{
  if (ncp->ipcp.fsm.state > ST_CLOSED ||
      ncp->ipcp.fsm.state == ST_STARTING)
    FUNC0(&ncp->ipcp.fsm);

#ifndef NOINET6
  if (ncp->ipv6cp.fsm.state > ST_CLOSED ||
      ncp->ipv6cp.fsm.state == ST_STARTING)
    FUNC0(&ncp->ipv6cp.fsm);
#endif
}