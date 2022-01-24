#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct TYPE_6__ {struct bundle* bundle; } ;
struct ipv6cp {struct ncpaddr hisaddr; struct ncpaddr myaddr; TYPE_1__ fsm; } ;
struct in6_addr {int* s6_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ipv6routes; scalar_t__ valid; } ;
struct TYPE_7__ {scalar_t__ sendpipe; scalar_t__ recvpipe; } ;
struct TYPE_9__ {int /*<<< orphan*/  route; TYPE_2__ cfg; } ;
struct bundle {TYPE_3__ radius; TYPE_4__ ncp; int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 int IFACE_ADD_FIRST ; 
 int IFACE_CLEAR_ALIASES ; 
 int IFACE_FORCE_ADD ; 
 int IFACE_SYSTEM ; 
 int /*<<< orphan*/  IPV6CP_IFIDLEN ; 
 int /*<<< orphan*/  OPT_IFACEALIAS ; 
 int /*<<< orphan*/  OPT_SROUTES ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,struct ncprange*,struct ncpaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 struct in6_addr in6addr_linklocal_mcast ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ncpaddr*,struct sockaddr_storage*) ; 
 scalar_t__ FUNC6 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC7 (struct ncpaddr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ncprange*,struct sockaddr_storage*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC9 (struct ncprange*,struct ncpaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bundle*,int /*<<< orphan*/ ,struct ncpaddr*,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC11 (struct bundle*,int /*<<< orphan*/ ,struct ncprange*,struct ncpaddr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bundle*,struct sockaddr*,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct ipv6cp *ipv6cp, u_char *myifid, u_char *hisifid)
{
  struct bundle *bundle = ipv6cp->fsm.bundle;
  struct in6_addr myaddr, hisaddr;
  struct ncprange myrange, range;
  struct ncpaddr addr;
  struct sockaddr_storage ssdst, ssgw, ssmask;
  struct sockaddr *sadst, *sagw, *samask;

  sadst = (struct sockaddr *)&ssdst;
  sagw = (struct sockaddr *)&ssgw;
  samask = (struct sockaddr *)&ssmask;

  FUNC4(&myaddr, '\0', sizeof myaddr);
  FUNC4(&hisaddr, '\0', sizeof hisaddr);

  myaddr.s6_addr[0] = 0xfe;
  myaddr.s6_addr[1] = 0x80;
  FUNC3(&myaddr.s6_addr[8], myifid, IPV6CP_IFIDLEN);
#if 0
  myaddr.s6_addr[8] |= 0x02;	/* set 'universal' bit */
#endif

  hisaddr.s6_addr[0] = 0xfe;
  hisaddr.s6_addr[1] = 0x80;
  FUNC3(&hisaddr.s6_addr[8], hisifid, IPV6CP_IFIDLEN);
#if 0
  hisaddr.s6_addr[8] |= 0x02;	/* set 'universal' bit */
#endif

  FUNC7(&ipv6cp->myaddr, &myaddr);
  FUNC7(&ipv6cp->hisaddr, &hisaddr);
  FUNC9(&myrange, &ipv6cp->myaddr, 64);

  if (!FUNC1(bundle->iface, &bundle->ncp, &myrange, &ipv6cp->hisaddr,
                 IFACE_ADD_FIRST|IFACE_FORCE_ADD|IFACE_SYSTEM))
    return 0;

  if (!FUNC0(bundle, OPT_IFACEALIAS))
    FUNC2(bundle->iface, &bundle->ncp, AF_INET6,
                IFACE_CLEAR_ALIASES|IFACE_SYSTEM);

  FUNC7(&addr, &in6addr_linklocal_mcast);
  FUNC9(&range, &addr, 32);
  FUNC11(bundle, RTM_ADD, &range, &ipv6cp->myaddr, 1, 0);

  if (bundle->ncp.cfg.sendpipe > 0 || bundle->ncp.cfg.recvpipe > 0) {
    FUNC8(&myrange, &ssgw, &ssmask);
    if (FUNC6(&ipv6cp->hisaddr))
      FUNC5(&ipv6cp->hisaddr, &ssdst);
    else
      sadst = NULL;
    FUNC12(bundle, sadst, sagw, samask, NULL, NULL);
  }

  if (FUNC0(bundle, OPT_SROUTES))
    FUNC10(bundle, bundle->ncp.route, &ipv6cp->myaddr, &ipv6cp->hisaddr);

#ifndef NORADIUS
  if (bundle->radius.valid)
    FUNC10(bundle, bundle->radius.ipv6routes, &ipv6cp->myaddr,
                 &ipv6cp->hisaddr);
#endif

  return 1;	/* Ok */
}