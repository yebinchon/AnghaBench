
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_devinfo {int dummy; } ;
struct hdaa_audio_ctl {scalar_t__ enable; scalar_t__ ossmask; int offset; int step; } ;


 int HDAA_AMP_MUTE_ALL ;
 int HDAA_AMP_MUTE_NONE ;
 int hdaa_audio_ctl_amp_set (struct hdaa_audio_ctl*,int ,int,int) ;
 struct hdaa_audio_ctl* hdaa_audio_ctl_each (struct hdaa_devinfo*,int*) ;

__attribute__((used)) static void
hdaa_audio_ctl_commit(struct hdaa_devinfo *devinfo)
{
 struct hdaa_audio_ctl *ctl;
 int i, z;

 i = 0;
 while ((ctl = hdaa_audio_ctl_each(devinfo, &i)) != ((void*)0)) {
  if (ctl->enable == 0 || ctl->ossmask != 0) {



   hdaa_audio_ctl_amp_set(ctl, HDAA_AMP_MUTE_ALL, 0, 0);
   continue;
  }

  z = ctl->offset;
  if (z > ctl->step)
   z = ctl->step;
  hdaa_audio_ctl_amp_set(ctl, HDAA_AMP_MUTE_NONE, z, z);
 }
}
