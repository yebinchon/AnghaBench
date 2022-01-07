
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_mw {size_t size; int widx; int pidx; struct tool_ctx* tc; } ;
struct tool_ctx {int dummy; } ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int dummy; } ;


 int EINVAL ;
 int tool_free_mw (struct tool_ctx*,int ,int ) ;
 int tool_setup_mw (struct tool_ctx*,int ,int ,size_t) ;

__attribute__((used)) static int
tool_mw_trans_write(struct sysctl_oid *oidp, struct sysctl_req *req,
    struct tool_mw *inmw, size_t wsize)
{
 struct tool_ctx *tc = inmw->tc;
 int rc = 0;

 if (wsize == 0)
  return (EINVAL);


 if (inmw->size == wsize)
  return (0);


 if (inmw->size)
  tool_free_mw(tc, inmw->pidx, inmw->widx);

 rc = tool_setup_mw(tc, inmw->pidx, inmw->widx, wsize);

 return (rc);
}
