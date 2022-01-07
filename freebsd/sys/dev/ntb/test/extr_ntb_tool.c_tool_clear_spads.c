
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_ctx {int peer_cnt; TYPE_1__* peers; int inspads; } ;
struct TYPE_2__ {int outspads; } ;


 int M_NTB_TOOL ;
 int free (int ,int ) ;

__attribute__((used)) static void
tool_clear_spads(struct tool_ctx *tc)
{
 int pidx;


 free(tc->inspads, M_NTB_TOOL);


 for (pidx = 0; pidx < tc->peer_cnt; pidx++)
  free(tc->peers[pidx].outspads, M_NTB_TOOL);
}
