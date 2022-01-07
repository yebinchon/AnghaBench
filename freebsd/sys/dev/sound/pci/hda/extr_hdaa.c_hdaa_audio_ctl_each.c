
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_devinfo {int ctlcnt; struct hdaa_audio_ctl* ctl; } ;
struct hdaa_audio_ctl {int dummy; } ;



__attribute__((used)) static struct hdaa_audio_ctl *
hdaa_audio_ctl_each(struct hdaa_devinfo *devinfo, int *index)
{
 if (devinfo == ((void*)0) ||
     index == ((void*)0) || devinfo->ctl == ((void*)0) ||
     devinfo->ctlcnt < 1 ||
     *index < 0 || *index >= devinfo->ctlcnt)
  return (((void*)0));
 return (&devinfo->ctl[(*index)++]);
}
