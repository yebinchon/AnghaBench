#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_10__* nbns; int /*<<< orphan*/  dns_neg; TYPE_10__* dns; } ;
struct TYPE_20__ {char* src; } ;
struct TYPE_16__ {scalar_t__ slotcomp; int /*<<< orphan*/  slots; int /*<<< orphan*/  neg; } ;
struct TYPE_11__ {scalar_t__ s_addr; } ;
struct TYPE_15__ {int maxreq; int maxtrm; int /*<<< orphan*/  timeout; } ;
struct TYPE_19__ {TYPE_7__ ns; int /*<<< orphan*/  peer_range; TYPE_9__ peer_list; TYPE_5__ vj; TYPE_10__ TriggerAddress; scalar_t__ HaveTriggerAddress; int /*<<< orphan*/  my_range; TYPE_4__ fsm; } ;
struct TYPE_17__ {TYPE_10__* dns; } ;
struct TYPE_14__ {scalar_t__ state; int /*<<< orphan*/  name; } ;
struct ipcp {int /*<<< orphan*/  throughput; TYPE_8__ cfg; TYPE_6__ ns; int /*<<< orphan*/  my_compproto; TYPE_10__ my_ip; int /*<<< orphan*/  peer_compproto; TYPE_10__ peer_ip; TYPE_3__ fsm; } ;
struct cmdargs {int /*<<< orphan*/  prompt; TYPE_2__* bundle; } ;
struct TYPE_12__ {struct ipcp ipcp; } ;
struct TYPE_13__ {TYPE_1__ ncp; } ;

/* Variables and functions */
 scalar_t__ INADDR_NONE ; 
 scalar_t__ ST_OPENED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_10__) ; 
 scalar_t__ FUNC3 (struct ipcp*) ; 
 scalar_t__ FUNC4 (TYPE_9__*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct cmdargs const *arg)
{
  struct ipcp *ipcp = &arg->bundle->ncp.ipcp;

  FUNC6(arg->prompt, "%s [%s]\n", ipcp->fsm.name,
                FUNC0(ipcp->fsm.state));
  if (ipcp->fsm.state == ST_OPENED) {
    FUNC6(arg->prompt, " His side:        %s, %s\n",
                  FUNC2(ipcp->peer_ip), FUNC8(ipcp->peer_compproto));
    FUNC6(arg->prompt, " My side:         %s, %s\n",
                  FUNC2(ipcp->my_ip), FUNC8(ipcp->my_compproto));
    FUNC6(arg->prompt, " Queued packets:  %lu\n",
                  (unsigned long)FUNC3(ipcp));
  }

  FUNC6(arg->prompt, "\nDefaults:\n");
  FUNC6(arg->prompt, " FSM retry = %us, max %u Config"
                " REQ%s, %u Term REQ%s\n", ipcp->cfg.fsm.timeout,
                ipcp->cfg.fsm.maxreq, ipcp->cfg.fsm.maxreq == 1 ? "" : "s",
                ipcp->cfg.fsm.maxtrm, ipcp->cfg.fsm.maxtrm == 1 ? "" : "s");
  FUNC6(arg->prompt, " My Address:      %s\n",
                FUNC5(&ipcp->cfg.my_range));
  if (ipcp->cfg.HaveTriggerAddress)
    FUNC6(arg->prompt, " Trigger address: %s\n",
                  FUNC2(ipcp->cfg.TriggerAddress));

  FUNC6(arg->prompt, " VJ compression:  %s (%d slots %s slot "
                "compression)\n", FUNC1(ipcp->cfg.vj.neg),
                ipcp->cfg.vj.slots, ipcp->cfg.vj.slotcomp ? "with" : "without");

  if (FUNC4(&ipcp->cfg.peer_list))
    FUNC6(arg->prompt, " His Address:     %s\n",
                  ipcp->cfg.peer_list.src);
  else
    FUNC6(arg->prompt, " His Address:     %s\n",
                  FUNC5(&ipcp->cfg.peer_range));

  FUNC6(arg->prompt, " DNS:             %s",
                ipcp->cfg.ns.dns[0].s_addr == INADDR_NONE ?
                "none" : FUNC2(ipcp->cfg.ns.dns[0]));
  if (ipcp->cfg.ns.dns[1].s_addr != INADDR_NONE)
    FUNC6(arg->prompt, ", %s",
                  FUNC2(ipcp->cfg.ns.dns[1]));
  FUNC6(arg->prompt, ", %s\n",
                FUNC1(ipcp->cfg.ns.dns_neg));
  FUNC6(arg->prompt, " Resolver DNS:    %s",
                ipcp->ns.dns[0].s_addr == INADDR_NONE ?
                "none" : FUNC2(ipcp->ns.dns[0]));
  if (ipcp->ns.dns[1].s_addr != INADDR_NONE &&
      ipcp->ns.dns[1].s_addr != ipcp->ns.dns[0].s_addr)
    FUNC6(arg->prompt, ", %s",
                  FUNC2(ipcp->ns.dns[1]));
  FUNC6(arg->prompt, "\n NetBIOS NS:      %s, ",
                FUNC2(ipcp->cfg.ns.nbns[0]));
  FUNC6(arg->prompt, "%s\n\n",
                FUNC2(ipcp->cfg.ns.nbns[1]));

  FUNC7(&ipcp->throughput, arg->prompt);

  return 0;
}