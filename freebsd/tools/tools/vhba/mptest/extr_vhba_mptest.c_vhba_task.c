
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_scsiio {int dummy; } ;
struct TYPE_8__ {TYPE_1__* entries; } ;
struct ccb_hdr {int timeout_ch; TYPE_2__ sim_priv; } ;
struct TYPE_9__ {TYPE_4__* vhba; } ;
typedef TYPE_3__ mptest_t ;
struct TYPE_11__ {int tqe; } ;
struct TYPE_10__ {int lock; int done; int actv; } ;
struct TYPE_7__ {TYPE_3__* ptr; } ;


 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;
 int callout_handle_init (int *) ;
 int mptest_act (TYPE_3__*,struct ccb_scsiio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_5__ sim_links ;
 int vhba_kick (TYPE_4__*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vhba_task(void *arg, int pending)
{
 mptest_t *vhbas = arg;
 struct ccb_hdr *ccbh;
 int nadded = 0;

 mtx_lock(&vhbas->vhba->lock);
 while ((ccbh = TAILQ_FIRST(&vhbas->vhba->actv)) != ((void*)0)) {
  TAILQ_REMOVE(&vhbas->vhba->actv, ccbh, sim_links.tqe);
                mptest_act(vhbas, (struct ccb_scsiio *)ccbh);
  nadded++;
  ccbh->sim_priv.entries[0].ptr = vhbas;
  callout_handle_init(&ccbh->timeout_ch);
 }
 if (nadded) {
  vhba_kick(vhbas->vhba);
 } else {
  while ((ccbh = TAILQ_FIRST(&vhbas->vhba->done)) != ((void*)0)) {
   TAILQ_REMOVE(&vhbas->vhba->done, ccbh, sim_links.tqe);
   xpt_done((union ccb *)ccbh);
  }
 }
 mtx_unlock(&vhbas->vhba->lock);
}
