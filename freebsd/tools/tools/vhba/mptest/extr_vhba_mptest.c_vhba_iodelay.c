
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* entries; } ;
struct ccb_hdr {TYPE_2__ sim_priv; } ;
struct TYPE_8__ {int nact; TYPE_4__* vhba; int inproc; } ;
typedef TYPE_3__ mptest_t ;
struct TYPE_10__ {int tqe; } ;
struct TYPE_9__ {int lock; int done; } ;
struct TYPE_6__ {TYPE_3__* ptr; } ;


 int TAILQ_INSERT_TAIL (int *,struct ccb_hdr*,int ) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_5__ sim_links ;
 int vhba_kick (TYPE_4__*) ;

__attribute__((used)) static void
vhba_iodelay(void *arg)
{
 struct ccb_hdr *ccbh = arg;
 mptest_t *vhbas = ccbh->sim_priv.entries[0].ptr;

 mtx_lock(&vhbas->vhba->lock);
 TAILQ_REMOVE(&vhbas->inproc, ccbh, sim_links.tqe);
 TAILQ_INSERT_TAIL(&vhbas->vhba->done, ccbh, sim_links.tqe);
 vhbas->nact -= 1;
 vhba_kick(vhbas->vhba);
 mtx_unlock(&vhbas->vhba->lock);
}
