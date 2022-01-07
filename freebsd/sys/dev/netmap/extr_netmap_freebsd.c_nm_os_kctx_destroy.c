
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_kctx {scalar_t__ worker; } ;


 int M_DEVBUF ;
 int free (struct nm_kctx*,int ) ;
 int nm_os_kctx_worker_stop (struct nm_kctx*) ;

void
nm_os_kctx_destroy(struct nm_kctx *nmk)
{
 if (!nmk)
  return;

 if (nmk->worker)
  nm_os_kctx_worker_stop(nmk);

 free(nmk, M_DEVBUF);
}
