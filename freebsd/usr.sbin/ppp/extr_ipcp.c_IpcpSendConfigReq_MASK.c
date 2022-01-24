#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct physical {int dummy; } ;
struct TYPE_10__ {TYPE_4__* dns; } ;
struct TYPE_7__ {int /*<<< orphan*/  dns_neg; } ;
struct TYPE_8__ {TYPE_2__ ns; } ;
struct compreq {int slots; int compcid; int /*<<< orphan*/  proto; } ;
struct TYPE_6__ {struct compreq s_addr; } ;
struct ipcp {int my_compproto; TYPE_5__ ns; TYPE_3__ cfg; scalar_t__ heis1172; TYPE_1__ my_ip; } ;
struct fsm_opt {int /*<<< orphan*/  data; } ;
struct fsm {int /*<<< orphan*/  reqid; int /*<<< orphan*/  link; } ;
struct TYPE_9__ {struct compreq s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_CONFIGREQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,struct fsm_opt*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_FSM_OPT_LEN ; 
 int /*<<< orphan*/  MB_IPCPOUT ; 
 int /*<<< orphan*/  PROTO_VJCOMP ; 
 int /*<<< orphan*/  FUNC2 (struct ipcp*,scalar_t__) ; 
 scalar_t__ TY_ADJUST_NS ; 
 scalar_t__ TY_COMPPROTO ; 
 scalar_t__ TY_IPADDR ; 
 scalar_t__ TY_PRIMARY_DNS ; 
 scalar_t__ TY_SECONDARY_DNS ; 
 struct ipcp* FUNC3 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct physical* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct compreq*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct physical*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct fsm *fp)
{
  /* Send config REQ please */
  struct physical *p = FUNC6(fp->link);
  struct ipcp *ipcp = FUNC3(fp);
  u_char buff[MAX_FSM_OPT_LEN];
  struct fsm_opt *o;

  o = (struct fsm_opt *)buff;

  if ((p && !FUNC8(p)) || !FUNC2(ipcp, TY_IPADDR)) {
    FUNC7(o->data, &ipcp->my_ip.s_addr, 4);
    FUNC0(TY_IPADDR, 6, o);
  }

  if (ipcp->my_compproto && !FUNC2(ipcp, TY_COMPPROTO)) {
    if (ipcp->heis1172) {
      u_int16_t proto = PROTO_VJCOMP;

      FUNC9(&proto, o->data);
      FUNC0(TY_COMPPROTO, 4, o);
    } else {
      struct compreq req;

      req.proto = FUNC5(ipcp->my_compproto >> 16);
      req.slots = (ipcp->my_compproto >> 8) & 255;
      req.compcid = ipcp->my_compproto & 1;
      FUNC7(o->data, &req, 4);
      FUNC0(TY_COMPPROTO, 6, o);
    }
  }

  if (FUNC1(ipcp->cfg.ns.dns_neg)) {
    if (!FUNC2(ipcp, TY_PRIMARY_DNS - TY_ADJUST_NS)) {
      FUNC7(o->data, &ipcp->ns.dns[0].s_addr, 4);
      FUNC0(TY_PRIMARY_DNS, 6, o);
    }

    if (!FUNC2(ipcp, TY_SECONDARY_DNS - TY_ADJUST_NS)) {
      FUNC7(o->data, &ipcp->ns.dns[1].s_addr, 4);
      FUNC0(TY_SECONDARY_DNS, 6, o);
    }
  }

  FUNC4(fp, CODE_CONFIGREQ, fp->reqid, buff, (u_char *)o - buff,
             MB_IPCPOUT);
}