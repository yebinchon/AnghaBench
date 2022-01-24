#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ncpaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct cmdargs {int argc; int argn; scalar_t__ prompt; TYPE_5__* cmd; TYPE_4__* bundle; int /*<<< orphan*/ * argv; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_9__ {TYPE_2__ my_ip; TYPE_1__ fsm; } ;
struct TYPE_12__ {TYPE_3__ ipcp; } ;
struct TYPE_11__ {scalar_t__ args; } ;
struct TYPE_10__ {TYPE_6__ ncp; int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ ST_OPENED ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_6__*,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncpaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ncpaddr*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct cmdargs const *arg)
{
  struct ncpaddr ifa;
  struct in_addr ifa4;
  int ok;

  if (arg->argc != arg->argn + 1)
    return -1;

  if (!FUNC2(&ifa, NULL, arg->argv[arg->argn]))
    return -1;

  if (arg->bundle->ncp.ipcp.fsm.state == ST_OPENED &&
      FUNC3(&ifa, &ifa4) &&
      arg->bundle->ncp.ipcp.my_ip.s_addr == ifa4.s_addr) {
    FUNC1(LogWARN, "%s: Cannot remove active interface address\n",
               FUNC4(&ifa));
    return 1;
  }

  ok = FUNC0(arg->bundle->iface, &arg->bundle->ncp, &ifa);
  if (!ok) {
    if (arg->cmd->args)
      ok = 1;
    else if (arg->prompt)
      FUNC5(arg->prompt, "%s: No such interface address\n",
                    FUNC4(&ifa));
    else
      FUNC1(LogWARN, "%s: No such interface address\n",
                 FUNC4(&ifa));
  }

  return !ok;
}