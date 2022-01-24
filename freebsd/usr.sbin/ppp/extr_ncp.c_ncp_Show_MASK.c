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
struct TYPE_8__ {unsigned int nports; char** port; } ;
struct TYPE_7__ {unsigned int nports; char** port; } ;
struct TYPE_9__ {scalar_t__ tos; TYPE_3__ udp; TYPE_2__ tcp; } ;
struct TYPE_10__ {char* sendpipe; char* recvpipe; TYPE_4__ urgent; } ;
struct ncp {scalar_t__ afq; TYPE_5__ cfg; scalar_t__ route; } ;
struct cmdargs {int /*<<< orphan*/  prompt; TYPE_1__* bundle; } ;
struct TYPE_6__ {struct ncp ncp; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 

int
FUNC2(struct cmdargs const *arg)
{
  struct ncp *ncp = &arg->bundle->ncp;
  unsigned p;

#ifndef NOINET6
  FUNC0(arg->prompt, "Next queued AF: %s\n",
                ncp->afq == AF_INET6 ? "inet6" : "inet");
#endif

  if (ncp->route) {
    FUNC0(arg->prompt, "\n");
    FUNC1(arg->prompt, ncp->route, "Sticky routes", 1);
  }

  FUNC0(arg->prompt, "\nDefaults:\n");
  FUNC0(arg->prompt, "  sendpipe:      ");
  if (ncp->cfg.sendpipe > 0)
    FUNC0(arg->prompt, "%-20ld\n", ncp->cfg.sendpipe);
  else
    FUNC0(arg->prompt, "unspecified\n");
  FUNC0(arg->prompt, "  recvpipe:      ");
  if (ncp->cfg.recvpipe > 0)
    FUNC0(arg->prompt, "%ld\n", ncp->cfg.recvpipe);
  else
    FUNC0(arg->prompt, "unspecified\n");

  FUNC0(arg->prompt, "\n  Urgent ports\n");
  FUNC0(arg->prompt, "         TCP:    ");
  if (ncp->cfg.urgent.tcp.nports == 0)
    FUNC0(arg->prompt, "none");
  else
    for (p = 0; p < ncp->cfg.urgent.tcp.nports; p++) {
      if (p)
        FUNC0(arg->prompt, ", ");
      FUNC0(arg->prompt, "%u", ncp->cfg.urgent.tcp.port[p]);
    }

  FUNC0(arg->prompt, "\n         UDP:    ");
  if (ncp->cfg.urgent.udp.nports == 0)
    FUNC0(arg->prompt, "none");
  else
    for (p = 0; p < ncp->cfg.urgent.udp.nports; p++) {
      if (p)
        FUNC0(arg->prompt, ", ");
      FUNC0(arg->prompt, "%u", ncp->cfg.urgent.udp.port[p]);
    }
  FUNC0(arg->prompt, "\n         TOS:    %s\n\n",
                ncp->cfg.urgent.tos ? "yes" : "no");

  return 0;
}