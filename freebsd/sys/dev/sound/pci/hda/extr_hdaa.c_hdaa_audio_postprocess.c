
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_widget {int dummy; } ;
struct hdaa_devinfo {int startnode; int endnode; } ;


 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;
 int hdaa_widget_postprocess (struct hdaa_widget*) ;

__attribute__((used)) static void
hdaa_audio_postprocess(struct hdaa_devinfo *devinfo)
{
 struct hdaa_widget *w;
 int i;

 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0))
   continue;
  hdaa_widget_postprocess(w);
 }
}
