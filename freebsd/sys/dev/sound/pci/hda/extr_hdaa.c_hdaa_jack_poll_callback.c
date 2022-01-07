
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdaa_widget {scalar_t__ enable; scalar_t__ type; } ;
struct hdaa_devinfo {scalar_t__ poll_ival; int ascnt; int poll_jack; TYPE_1__* as; } ;
struct TYPE_2__ {scalar_t__ hpredir; int * pins; } ;


 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 int callout_reset (int *,scalar_t__,void (*) (void*),struct hdaa_devinfo*) ;
 int hdaa_lock (struct hdaa_devinfo*) ;
 int hdaa_presence_handler (struct hdaa_widget*) ;
 int hdaa_unlock (struct hdaa_devinfo*) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int ) ;

__attribute__((used)) static void
hdaa_jack_poll_callback(void *arg)
{
 struct hdaa_devinfo *devinfo = arg;
 struct hdaa_widget *w;
 int i;

 hdaa_lock(devinfo);
 if (devinfo->poll_ival == 0) {
  hdaa_unlock(devinfo);
  return;
 }
 for (i = 0; i < devinfo->ascnt; i++) {
  if (devinfo->as[i].hpredir < 0)
   continue;
  w = hdaa_widget_get(devinfo, devinfo->as[i].pins[15]);
  if (w == ((void*)0) || w->enable == 0 || w->type !=
      HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
   continue;
  hdaa_presence_handler(w);
 }
 callout_reset(&devinfo->poll_jack, devinfo->poll_ival,
     hdaa_jack_poll_callback, devinfo);
 hdaa_unlock(devinfo);
}
