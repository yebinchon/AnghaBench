
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ pin; } ;
struct hdaa_widget {scalar_t__ type; TYPE_2__ wclass; } ;
struct hdaa_devinfo {int startnode; int endnode; int dev; } ;


 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 int device_printf (int ,char*) ;
 int hdaa_dump_pin_config (struct hdaa_widget*,int ) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;

__attribute__((used)) static void
hdaa_dump_pin_configs(struct hdaa_devinfo *devinfo)
{
 struct hdaa_widget *w;
 int i;

 device_printf(devinfo->dev, "nid   0x    as seq "
     "device       conn  jack    loc        color   misc\n");
 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0))
   continue;
  if (w->type != HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
   continue;
  hdaa_dump_pin_config(w, w->wclass.pin.config);
 }
}
