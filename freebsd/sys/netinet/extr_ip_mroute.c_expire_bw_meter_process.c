
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int dummy; } ;


 int BW_METER_PERIOD ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (struct vnet*) ;
 int MRT_MFC_BW_UPCALL ;
 int V_bw_meter_ch ;
 int V_mrt_api_config ;
 int bw_meter_process () ;
 int callout_reset (int *,int ,void (*) (void*),int ) ;
 int curvnet ;

__attribute__((used)) static void
expire_bw_meter_process(void *arg)
{
    CURVNET_SET((struct vnet *) arg);

    if (V_mrt_api_config & MRT_MFC_BW_UPCALL)
 bw_meter_process();

    callout_reset(&V_bw_meter_ch, BW_METER_PERIOD, expire_bw_meter_process,
 curvnet);
    CURVNET_RESTORE();
}
