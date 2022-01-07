
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sid; int stp; int flags; int io_mtx; int hld_mtx; int snd_mtx; int rsp_mtx; int rsv_mtx; int hld; int wsnd; int isnd; int csnd; int rsv; int rsp; } ;
typedef TYPE_1__ isc_session_t ;


 int ISC_SM_RUN ;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int debug (int,char*,int ) ;
 int debug_called (int) ;
 int isc_add_sysctls (TYPE_1__*) ;
 int ism_out ;
 int kproc_create (int ,TYPE_1__*,int *,int ,int ,char*,int ) ;
 int kthread_create (int ,TYPE_1__*,int *,int ,int ,char*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;

int
ism_start(isc_session_t *sp)
{
     debug_called(8);



     TAILQ_INIT(&sp->rsp);
     TAILQ_INIT(&sp->rsv);
     TAILQ_INIT(&sp->csnd);
     TAILQ_INIT(&sp->isnd);
     TAILQ_INIT(&sp->wsnd);
     TAILQ_INIT(&sp->hld);

     mtx_init(&sp->rsv_mtx, "iscsi-rsv", ((void*)0), MTX_DEF);
     mtx_init(&sp->rsp_mtx, "iscsi-rsp", ((void*)0), MTX_DEF);
     mtx_init(&sp->snd_mtx, "iscsi-snd", ((void*)0), MTX_DEF);
     mtx_init(&sp->hld_mtx, "iscsi-hld", ((void*)0), MTX_DEF);
     mtx_init(&sp->io_mtx, "iscsi-io", ((void*)0), MTX_DEF);

     isc_add_sysctls(sp);

     sp->flags |= ISC_SM_RUN;

     debug(4, "starting ism_proc: sp->sid=%d", sp->sid);




     return kthread_create(ism_out, sp, &sp->stp, 0, 0, "isc_out %d", sp->sid);

}
