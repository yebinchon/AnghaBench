
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_ctx {int peer_cnt; TYPE_1__* peers; } ;
struct TYPE_2__ {int inmw_cnt; int inmws; } ;


 int M_NTB_TOOL ;
 int free (int ,int ) ;
 int tool_free_mw (struct tool_ctx*,int,int) ;

__attribute__((used)) static void tool_clear_mws(struct tool_ctx *tc)
{
 int widx, pidx;


 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++)
   tool_free_mw(tc, pidx, widx);
  free(tc->peers[pidx].inmws, M_NTB_TOOL);
 }
}
