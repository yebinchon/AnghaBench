
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vi_flags; int vi_buffer; } ;
typedef TYPE_1__ video_info_t ;
typedef int video_adapter_t ;
struct s3pci_softc {int mem_base; } ;
typedef int device_t ;
struct TYPE_6__ {int (* get_info ) (int *,int,TYPE_1__*) ;} ;


 int M_VESA_BASE ;
 int V_INFO_GRAPHICS ;
 int V_INFO_LINEAR ;
 scalar_t__ device_get_softc (int ) ;
 TYPE_4__* prevvidsw ;
 int s3pci_dev ;
 int stub1 (int *,int,TYPE_1__*) ;

__attribute__((used)) static int
s3lfb_get_info(video_adapter_t *adp, int mode, video_info_t *info)
{




 int error;

 if ((error = (*prevvidsw->get_info)(adp, mode, info)))
  return error;
 return 0;
}
