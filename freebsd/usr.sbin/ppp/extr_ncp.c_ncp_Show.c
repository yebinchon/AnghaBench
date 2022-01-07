
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int nports; char** port; } ;
struct TYPE_7__ {unsigned int nports; char** port; } ;
struct TYPE_9__ {scalar_t__ tos; TYPE_3__ udp; TYPE_2__ tcp; } ;
struct TYPE_10__ {char* sendpipe; char* recvpipe; TYPE_4__ urgent; } ;
struct ncp {scalar_t__ afq; TYPE_5__ cfg; scalar_t__ route; } ;
struct cmdargs {int prompt; TYPE_1__* bundle; } ;
struct TYPE_6__ {struct ncp ncp; } ;


 scalar_t__ AF_INET6 ;
 int prompt_Printf (int ,char*,...) ;
 int route_ShowSticky (int ,scalar_t__,char*,int) ;

int
ncp_Show(struct cmdargs const *arg)
{
  struct ncp *ncp = &arg->bundle->ncp;
  unsigned p;


  prompt_Printf(arg->prompt, "Next queued AF: %s\n",
                ncp->afq == AF_INET6 ? "inet6" : "inet");


  if (ncp->route) {
    prompt_Printf(arg->prompt, "\n");
    route_ShowSticky(arg->prompt, ncp->route, "Sticky routes", 1);
  }

  prompt_Printf(arg->prompt, "\nDefaults:\n");
  prompt_Printf(arg->prompt, "  sendpipe:      ");
  if (ncp->cfg.sendpipe > 0)
    prompt_Printf(arg->prompt, "%-20ld\n", ncp->cfg.sendpipe);
  else
    prompt_Printf(arg->prompt, "unspecified\n");
  prompt_Printf(arg->prompt, "  recvpipe:      ");
  if (ncp->cfg.recvpipe > 0)
    prompt_Printf(arg->prompt, "%ld\n", ncp->cfg.recvpipe);
  else
    prompt_Printf(arg->prompt, "unspecified\n");

  prompt_Printf(arg->prompt, "\n  Urgent ports\n");
  prompt_Printf(arg->prompt, "         TCP:    ");
  if (ncp->cfg.urgent.tcp.nports == 0)
    prompt_Printf(arg->prompt, "none");
  else
    for (p = 0; p < ncp->cfg.urgent.tcp.nports; p++) {
      if (p)
        prompt_Printf(arg->prompt, ", ");
      prompt_Printf(arg->prompt, "%u", ncp->cfg.urgent.tcp.port[p]);
    }

  prompt_Printf(arg->prompt, "\n         UDP:    ");
  if (ncp->cfg.urgent.udp.nports == 0)
    prompt_Printf(arg->prompt, "none");
  else
    for (p = 0; p < ncp->cfg.urgent.udp.nports; p++) {
      if (p)
        prompt_Printf(arg->prompt, ", ");
      prompt_Printf(arg->prompt, "%u", ncp->cfg.urgent.udp.port[p]);
    }
  prompt_Printf(arg->prompt, "\n         TOS:    %s\n\n",
                ncp->cfg.urgent.tos ? "yes" : "no");

  return 0;
}
