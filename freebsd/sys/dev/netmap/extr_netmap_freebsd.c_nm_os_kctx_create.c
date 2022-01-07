
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nm_kctx_cfg {int attach_user; int type; int worker_private; int worker_fn; } ;
struct TYPE_2__ {int type; int worker_private; int worker_fn; } ;
struct nm_kctx {int affinity; int attach_user; TYPE_1__ worker_ctx; int worker_lock; } ;


 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct nm_kctx* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

struct nm_kctx *
nm_os_kctx_create(struct nm_kctx_cfg *cfg, void *opaque)
{
 struct nm_kctx *nmk = ((void*)0);

 nmk = malloc(sizeof(*nmk), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!nmk)
  return ((void*)0);

 mtx_init(&nmk->worker_lock, "nm_kthread lock", ((void*)0), MTX_DEF);
 nmk->worker_ctx.worker_fn = cfg->worker_fn;
 nmk->worker_ctx.worker_private = cfg->worker_private;
 nmk->worker_ctx.type = cfg->type;
 nmk->affinity = -1;


 nmk->attach_user = cfg->attach_user;

 return nmk;
}
