
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tmo; } ;
struct TYPE_6__ {TYPE_1__ isp_osinfo; } ;
typedef TYPE_2__ ispsoftc_t ;


 int callout_reset (int *,int ,void (*) (void*),TYPE_2__*) ;
 int isp_timer_count ;
 int isp_tmcmd_restart (TYPE_2__*) ;

void
isp_timer(void *arg)
{
 ispsoftc_t *isp = arg;



 callout_reset(&isp->isp_osinfo.tmo, isp_timer_count, isp_timer, isp);
}
