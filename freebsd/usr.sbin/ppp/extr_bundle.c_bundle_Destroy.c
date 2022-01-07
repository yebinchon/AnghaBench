
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct datalink {int dummy; } ;
struct TYPE_8__ {int fd; } ;
struct TYPE_9__ {int mp; } ;
struct TYPE_7__ {int timer; } ;
struct TYPE_6__ {int timer; } ;
struct bundle {int * iface; TYPE_3__ dev; TYPE_4__ ncp; struct datalink* links; int radius; TYPE_2__ choked; TYPE_1__ idle; } ;


 int EX_ERRDEAD ;
 int IFACE_CLEAR_ALL ;
 int bundle_DownInterface (struct bundle*) ;
 int bundle_Notify (struct bundle*,int ) ;
 int bundle_UnlockTun (struct bundle*) ;
 int close (int ) ;
 struct datalink* datalink_Destroy (struct datalink*) ;
 int iface_Clear (int *,TYPE_4__*,int ,int ) ;
 int iface_Destroy (int *) ;
 int mp_Down (int *) ;
 int ncp_Destroy (TYPE_4__*) ;
 int radius_Destroy (int *) ;
 int timer_Stop (int *) ;

void
bundle_Destroy(struct bundle *bundle)
{
  struct datalink *dl;






  timer_Stop(&bundle->idle.timer);
  timer_Stop(&bundle->choked.timer);
  mp_Down(&bundle->ncp.mp);
  iface_Clear(bundle->iface, &bundle->ncp, 0, IFACE_CLEAR_ALL);
  bundle_DownInterface(bundle);



  radius_Destroy(&bundle->radius);



  dl = bundle->links;
  while (dl)
    dl = datalink_Destroy(dl);

  ncp_Destroy(&bundle->ncp);

  close(bundle->dev.fd);
  bundle_UnlockTun(bundle);


  bundle_Notify(bundle, EX_ERRDEAD);

  iface_Destroy(bundle->iface);
  bundle->iface = ((void*)0);
}
