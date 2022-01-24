#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ncpaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_7__ {char const* src; } ;
struct TYPE_6__ {int /*<<< orphan*/  peer_range; int /*<<< orphan*/  my_range; TYPE_2__ peer_list; } ;
struct ipcp {struct in_addr peer_ip; TYPE_1__ cfg; int /*<<< orphan*/  my_ip; } ;
struct ncp {struct ipcp ipcp; } ;
struct bundle {struct ncp ncp; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 struct in_addr FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*,int /*<<< orphan*/ *,struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipcp*,struct in_addr,struct in_addr) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ncpaddr*,struct in_addr) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct ncp*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct in_addr) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

int
FUNC15(struct bundle *bundle, const char *hisaddr, int setaddr)
{
  struct in_addr myaddr;
  struct ncp *ncp = &bundle->ncp;
  struct ipcp *ipcp = &ncp->ipcp;
  struct ncpaddr ncpaddr;

  /* Use `hisaddr' for the peers address (set iface if `setaddr') */
  FUNC8(&ipcp->cfg.peer_range, '\0', sizeof ipcp->cfg.peer_range);
  FUNC4(&ipcp->cfg.peer_list);
  if (FUNC14(hisaddr, ",-")) {
    FUNC6(&ipcp->cfg.peer_list, hisaddr);
    if (FUNC3(&ipcp->cfg.peer_list)) {
      FUNC5(&ipcp->cfg.peer_list);
      ipcp->peer_ip = FUNC0(bundle, ipcp->my_ip);
      if (ipcp->peer_ip.s_addr == INADDR_ANY) {
        FUNC7(LogWARN, "%s: None available !\n", ipcp->cfg.peer_list.src);
        return 0;
      }
      FUNC13(&ipcp->cfg.peer_range, ipcp->peer_ip);
    } else {
      FUNC7(LogWARN, "%s: Invalid range !\n", hisaddr);
      return 0;
    }
  } else if (FUNC10(&ipcp->cfg.peer_range, ncp, hisaddr) != 0) {
    if (FUNC11(&ipcp->cfg.my_range) != AF_INET) {
      FUNC7(LogWARN, "%s: Not an AF_INET address !\n", hisaddr);
      return 0;
    }
    FUNC12(&ipcp->cfg.my_range, &myaddr);
    FUNC12(&ipcp->cfg.peer_range, &ipcp->peer_ip);

    if (setaddr && !FUNC2(ipcp, myaddr, ipcp->peer_ip))
      return 0;
  } else
    return 0;

  FUNC9(&ncpaddr, ipcp->peer_ip);
  FUNC1(bundle, NULL, &ncpaddr);

  return 1;	/* Ok */
}