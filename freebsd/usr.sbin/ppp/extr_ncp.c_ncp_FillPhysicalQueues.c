
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncp {int afq; } ;
struct datalink {scalar_t__ state; TYPE_2__* physical; struct datalink* next; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_6__ {TYPE_1__ mp; } ;
struct bundle {TYPE_3__ ncp; struct datalink* links; } ;
struct TYPE_5__ {int link; int * out; } ;


 scalar_t__ DATALINK_OPEN ;
 size_t link_QueueLen (int *) ;
 size_t mp_FillPhysicalQueues (struct bundle*) ;
 size_t ncp_PushPacket (struct ncp*,int *,int *) ;
 size_t ncp_QueueLen (TYPE_3__*) ;

size_t
ncp_FillPhysicalQueues(struct ncp *ncp, struct bundle *bundle)
{
  size_t total;

  if (bundle->ncp.mp.active)
    total = mp_FillPhysicalQueues(bundle);
  else {
    struct datalink *dl;
    size_t add;

    for (total = 0, dl = bundle->links; dl; dl = dl->next)
      if (dl->state == DATALINK_OPEN) {
        add = link_QueueLen(&dl->physical->link);
        if (add == 0 && dl->physical->out == ((void*)0))
          add = ncp_PushPacket(ncp, &ncp->afq, &dl->physical->link);
        total += add;
      }
  }

  return total + ncp_QueueLen(&bundle->ncp);
}
