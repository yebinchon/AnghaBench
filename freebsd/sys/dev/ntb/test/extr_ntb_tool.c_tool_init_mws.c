
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_mw {int widx; int pidx; int addr_limit; int xlat_align_size; int xlat_align; int phys_size; int mm_base; int phys_addr; int mw_buf_size; int mw_buf_offset; struct tool_ctx* tc; } ;
struct tool_ctx {int peer_cnt; int dev; TYPE_1__* peers; } ;
struct TYPE_2__ {int inmw_cnt; struct tool_mw* inmws; } ;


 int DEFAULT_MW_OFF ;
 int DEFAULT_MW_SIZE ;
 int ENOMEM ;
 int M_NTB_TOOL ;
 int M_WAITOK ;
 int M_ZERO ;
 struct tool_mw* malloc (int,int ,int) ;
 int memset (void*,int ,int) ;
 int ntb_mw_count (int ) ;
 int ntb_mw_get_range (int ,int,int *,int *,int *,int *,int *,int *) ;
 int tool_clear_mws (struct tool_ctx*) ;

__attribute__((used)) static int
tool_init_mws(struct tool_ctx *tc)
{
 struct tool_mw *mw;
 int widx, pidx, rc;


 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  tc->peers[pidx].inmw_cnt = ntb_mw_count(tc->dev);
  tc->peers[pidx].inmws = malloc(tc->peers[pidx].inmw_cnt *
      sizeof(*tc->peers[pidx].inmws), M_NTB_TOOL,
      M_WAITOK | M_ZERO);
  if (tc->peers[pidx].inmws == ((void*)0))
   return (ENOMEM);

  for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++) {
   mw = &tc->peers[pidx].inmws[widx];
   memset((void *)mw, 0, sizeof(*mw));
   mw->tc = tc;
   mw->widx = widx;
   mw->pidx = pidx;
   mw->mw_buf_offset = DEFAULT_MW_OFF;
   mw->mw_buf_size = DEFAULT_MW_SIZE;

   rc = ntb_mw_get_range(tc->dev, widx, &mw->phys_addr,
       &mw->mm_base, &mw->phys_size, &mw->xlat_align,
       &mw->xlat_align_size, &mw->addr_limit);
   if (rc)
    goto free_mws;
  }
 }

 return (0);

free_mws:
 tool_clear_mws(tc);
 return (rc);
}
