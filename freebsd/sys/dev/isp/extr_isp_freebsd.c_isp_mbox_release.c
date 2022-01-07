
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mboxbsy; } ;
struct TYPE_5__ {TYPE_1__ isp_osinfo; } ;
typedef TYPE_2__ ispsoftc_t ;



void
isp_mbox_release(ispsoftc_t *isp)
{
 isp->isp_osinfo.mboxbsy = 0;
}
