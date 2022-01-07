
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vhba; } ;
typedef TYPE_2__ vhbarptluns_t ;
typedef union ccb {int dummy; } ccb ;
struct ccb_scsiio {int dummy; } ;
struct ccb_hdr {int dummy; } ;
struct TYPE_7__ {int tqe; } ;
struct TYPE_5__ {int lock; int done; int actv; } ;


 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_4__ sim_links ;
 int vhbarptluns_act (TYPE_2__*,struct ccb_scsiio*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vhba_task(void *arg, int pending)
{
 vhbarptluns_t *vhbas = arg;
 struct ccb_hdr *ccbh;

 mtx_lock(&vhbas->vhba->lock);
 while ((ccbh = TAILQ_FIRST(&vhbas->vhba->actv)) != ((void*)0)) {
  TAILQ_REMOVE(&vhbas->vhba->actv, ccbh, sim_links.tqe);
                vhbarptluns_act(vhbas, (struct ccb_scsiio *)ccbh);
 }
 while ((ccbh = TAILQ_FIRST(&vhbas->vhba->done)) != ((void*)0)) {
  TAILQ_REMOVE(&vhbas->vhba->done, ccbh, sim_links.tqe);
  xpt_done((union ccb *)ccbh);
 }
 mtx_unlock(&vhbas->vhba->lock);
}
