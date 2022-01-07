
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdaa_devinfo {int * ctl; } ;
struct hdaa_audio_ctl {scalar_t__ enable; int ndir; int dir; int index; TYPE_1__* widget; } ;
typedef scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ nid; } ;


 int HDAA_CTL_IN ;
 struct hdaa_audio_ctl* hdaa_audio_ctl_each (struct hdaa_devinfo*,int*) ;

__attribute__((used)) static struct hdaa_audio_ctl *
hdaa_audio_ctl_amp_get(struct hdaa_devinfo *devinfo, nid_t nid, int dir,
      int index, int cnt)
{
 struct hdaa_audio_ctl *ctl;
 int i, found = 0;

 if (devinfo == ((void*)0) || devinfo->ctl == ((void*)0))
  return (((void*)0));

 i = 0;
 while ((ctl = hdaa_audio_ctl_each(devinfo, &i)) != ((void*)0)) {
  if (ctl->enable == 0)
   continue;
  if (ctl->widget->nid != nid)
   continue;
  if (dir && ctl->ndir != dir)
   continue;
  if (index >= 0 && ctl->ndir == HDAA_CTL_IN &&
      ctl->dir == ctl->ndir && ctl->index != index)
   continue;
  found++;
  if (found == cnt || cnt <= 0)
   return (ctl);
 }

 return (((void*)0));
}
