
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_widget {int dummy; } ;
struct hdaa_devinfo {scalar_t__ startnode; scalar_t__ endnode; struct hdaa_widget* widget; } ;
typedef scalar_t__ nid_t ;



struct hdaa_widget *
hdaa_widget_get(struct hdaa_devinfo *devinfo, nid_t nid)
{
 if (devinfo == ((void*)0) || devinfo->widget == ((void*)0) ||
      nid < devinfo->startnode || nid >= devinfo->endnode)
  return (((void*)0));
 return (&devinfo->widget[nid - devinfo->startnode]);
}
