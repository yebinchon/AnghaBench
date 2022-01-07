
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* probe ) (int,int *,int *,int) ;int (* init ) (int,int ,int) ;} ;
typedef TYPE_1__ video_switch_t ;
struct TYPE_6__ {int adp; } ;
typedef TYPE_2__ vga_softc_t ;


 int ENXIO ;
 int VGA_DRIVER_NAME ;
 int stub1 (int,int *,int *,int) ;
 int stub2 (int,int ,int) ;
 TYPE_1__* vid_get_switch (int ) ;

int
vga_attach_unit(int unit, vga_softc_t *sc, int flags)
{
 video_switch_t *sw;
 int error;

 sw = vid_get_switch(VGA_DRIVER_NAME);
 if (sw == ((void*)0))
  return ENXIO;

 error = (*sw->probe)(unit, &sc->adp, ((void*)0), flags);
 if (error)
  return error;
 return (*sw->init)(unit, sc->adp, flags);
}
