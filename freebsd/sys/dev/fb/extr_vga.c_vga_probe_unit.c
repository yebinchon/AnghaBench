
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* probe ) (int,int **,int *,int) ;} ;
typedef TYPE_1__ video_switch_t ;
typedef int video_adapter_t ;


 int VGA_DRIVER_NAME ;
 int bcopy (int *,int *,int) ;
 int stub1 (int,int **,int *,int) ;
 TYPE_1__* vid_get_switch (int ) ;

int
vga_probe_unit(int unit, video_adapter_t *buf, int flags)
{
 video_adapter_t *adp;
 video_switch_t *sw;
 int error;

 sw = vid_get_switch(VGA_DRIVER_NAME);
 if (sw == ((void*)0))
  return 0;
 error = (*sw->probe)(unit, &adp, ((void*)0), flags);
 if (error)
  return error;
 bcopy(adp, buf, sizeof(*buf));
 return 0;
}
