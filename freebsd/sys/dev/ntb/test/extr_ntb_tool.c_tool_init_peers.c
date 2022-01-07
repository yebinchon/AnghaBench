
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_ctx {int peer_cnt; TYPE_1__* peers; int dev; } ;
struct TYPE_2__ {int pidx; struct tool_ctx* tc; } ;


 int ENOMEM ;
 int M_NTB_TOOL ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_1__* malloc (int,int ,int) ;
 int ntb_peer_port_count (int ) ;

__attribute__((used)) static int
tool_init_peers(struct tool_ctx *tc)
{
 int pidx;

 tc->peer_cnt = ntb_peer_port_count(tc->dev);
 tc->peers = malloc(tc->peer_cnt * sizeof(*tc->peers), M_NTB_TOOL,
     M_WAITOK | M_ZERO);
 if (tc->peers == ((void*)0))
  return (ENOMEM);
 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  tc->peers[pidx].pidx = pidx;
  tc->peers[pidx].tc = tc;
 }

 return (0);
}
