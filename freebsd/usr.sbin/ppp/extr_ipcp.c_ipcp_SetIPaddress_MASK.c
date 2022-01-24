#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_7__ {struct bundle* bundle; } ;
struct ipcp {TYPE_4__ ifmask; TYPE_1__ fsm; } ;
struct in_addr {int s_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  routes; scalar_t__ valid; } ;
struct TYPE_8__ {scalar_t__ sendpipe; scalar_t__ recvpipe; } ;
struct TYPE_11__ {int /*<<< orphan*/  route; TYPE_2__ cfg; } ;
struct bundle {TYPE_3__ radius; TYPE_5__ ncp; int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 int IFACE_ADD_FIRST ; 
 int IFACE_CLEAR_ALIASES ; 
 int IFACE_FORCE_ADD ; 
 int IFACE_SYSTEM ; 
 int INADDR_ANY ; 
 int /*<<< orphan*/  OPT_IFACEALIAS ; 
 int /*<<< orphan*/  OPT_SROUTES ; 
 struct in_addr FUNC1 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,struct ncprange*,struct ncpaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ncpaddr*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncpaddr*,struct in_addr) ; 
 int /*<<< orphan*/  FUNC6 (struct ncprange*,struct sockaddr_storage*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC7 (struct ncprange*,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ncprange*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC9 (struct bundle*,int /*<<< orphan*/ ,struct ncpaddr*,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC10 (struct bundle*,struct sockaddr*,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct ipcp *ipcp, struct in_addr myaddr,
                  struct in_addr hisaddr)
{
  struct bundle *bundle = ipcp->fsm.bundle;
  struct ncpaddr myncpaddr, hisncpaddr;
  struct ncprange myrange;
  struct in_addr mask;
  struct sockaddr_storage ssdst, ssgw, ssmask;
  struct sockaddr *sadst, *sagw, *samask;

  sadst = (struct sockaddr *)&ssdst;
  sagw = (struct sockaddr *)&ssgw;
  samask = (struct sockaddr *)&ssmask;

  FUNC5(&hisncpaddr, hisaddr);
  FUNC5(&myncpaddr, myaddr);
  FUNC7(&myrange, &myncpaddr);

  mask = FUNC1(myaddr);

  if (ipcp->ifmask.s_addr != INADDR_ANY &&
      (ipcp->ifmask.s_addr & mask.s_addr) == mask.s_addr)
    FUNC8(&myrange, ipcp->ifmask);

  if (!FUNC2(bundle->iface, &bundle->ncp, &myrange, &hisncpaddr,
                 IFACE_ADD_FIRST|IFACE_FORCE_ADD|IFACE_SYSTEM))
    return 0;

  if (!FUNC0(bundle, OPT_IFACEALIAS))
    FUNC3(bundle->iface, &bundle->ncp, AF_INET,
                IFACE_CLEAR_ALIASES|IFACE_SYSTEM);

  if (bundle->ncp.cfg.sendpipe > 0 || bundle->ncp.cfg.recvpipe > 0) {
    FUNC6(&myrange, &ssgw, &ssmask);
    FUNC4(&hisncpaddr, &ssdst);
    FUNC10(bundle, sadst, sagw, samask, NULL, NULL);
  }

  if (FUNC0(bundle, OPT_SROUTES))
    FUNC9(bundle, bundle->ncp.route, &myncpaddr, &hisncpaddr);

#ifndef NORADIUS
  if (bundle->radius.valid)
    FUNC9(bundle, bundle->radius.routes, &myncpaddr, &hisncpaddr);
#endif

  return 1;	/* Ok */
}