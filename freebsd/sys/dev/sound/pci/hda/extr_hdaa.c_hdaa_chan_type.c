
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ pin; } ;
struct hdaa_widget {scalar_t__ enable; scalar_t__ type; TYPE_2__ wclass; } ;
struct hdaa_devinfo {struct hdaa_audio_as* as; } ;
struct hdaa_audio_as {int * pins; } ;


 int HDA_CONFIG_DEFAULTCONF_DEVICE (int ) ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int ) ;

__attribute__((used)) static int
hdaa_chan_type(struct hdaa_devinfo *devinfo, int asid)
{
 struct hdaa_audio_as *as;
 struct hdaa_widget *w;
 int i, t = -1, t1;

 as = &devinfo->as[asid];
 for (i = 0; i < 16; i++) {
  w = hdaa_widget_get(devinfo, as->pins[i]);
  if (w == ((void*)0) || w->enable == 0 || w->type !=
      HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
   continue;
  t1 = HDA_CONFIG_DEFAULTCONF_DEVICE(w->wclass.pin.config);
  if (t == -1)
   t = t1;
  else if (t != t1) {
   t = -2;
   break;
  }
 }
 return (t);
}
