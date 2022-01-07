
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int peers; } ;


 int M_NTB_TOOL ;
 int free (int ,int ) ;

__attribute__((used)) static void
tool_clear_peers(struct tool_ctx *tc)
{

 free(tc->peers, M_NTB_TOOL);
}
