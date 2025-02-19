
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_widget {scalar_t__ enable; scalar_t__ bindas; int nconns; scalar_t__* connsenable; scalar_t__* conns; scalar_t__ nid; scalar_t__ type; int param; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {int startnode; int endnode; } ;


 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
hdaa_audio_dacs_equal(struct hdaa_widget *w1, struct hdaa_widget *w2)
{
 struct hdaa_devinfo *devinfo = w1->devinfo;
 struct hdaa_widget *w3;
 int i, j, c1, c2;

 if (memcmp(&w1->param, &w2->param, sizeof(w1->param)))
  return (0);
 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w3 = hdaa_widget_get(devinfo, i);
  if (w3 == ((void*)0) || w3->enable == 0)
   continue;
  if (w3->bindas != w1->bindas)
   continue;
  if (w3->nconns == 0)
   continue;
  c1 = c2 = -1;
  for (j = 0; j < w3->nconns; j++) {
   if (w3->connsenable[j] == 0)
    continue;
   if (w3->conns[j] == w1->nid)
    c1 = j;
   if (w3->conns[j] == w2->nid)
    c2 = j;
  }
  if (c1 < 0)
   continue;
  if (c2 < 0)
   return (0);
  if (w3->type != HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER)
   return (0);
 }
 return (1);
}
