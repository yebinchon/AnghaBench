
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int dummy; } ;


 int BW_UPCALLS_PERIOD ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (struct vnet*) ;
 int MFC_LOCK () ;
 int MFC_UNLOCK () ;
 int V_bw_upcalls_ch ;
 int bw_upcalls_send () ;
 int callout_reset (int *,int ,void (*) (void*),int ) ;
 int curvnet ;

__attribute__((used)) static void
expire_bw_upcalls_send(void *arg)
{
    CURVNET_SET((struct vnet *) arg);

    MFC_LOCK();
    bw_upcalls_send();
    MFC_UNLOCK();

    callout_reset(&V_bw_upcalls_ch, BW_UPCALLS_PERIOD, expire_bw_upcalls_send,
 curvnet);
    CURVNET_RESTORE();
}
