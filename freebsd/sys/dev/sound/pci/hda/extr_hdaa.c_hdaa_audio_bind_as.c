
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdaa_devinfo {int ascnt; int num_chans; struct hdaa_chan* chans; int dev; struct hdaa_audio_as* as; } ;
struct TYPE_2__ {int fmtlist; } ;
struct hdaa_chan {int as; int asindex; int dir; struct hdaa_devinfo* devinfo; int fmtlist; TYPE_1__ caps; } ;
struct hdaa_audio_as {scalar_t__ enable; int num_chans; scalar_t__ dir; int* chans; } ;


 scalar_t__ HDAA_CTL_IN ;
 int M_HDAA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int device_printf (int ,char*) ;
 int hdaa_pcmchannel_setup (struct hdaa_chan*) ;
 scalar_t__ malloc (int,int ,int) ;
 scalar_t__ realloc (struct hdaa_chan*,int,int ,int) ;

__attribute__((used)) static void
hdaa_audio_bind_as(struct hdaa_devinfo *devinfo)
{
 struct hdaa_audio_as *as = devinfo->as;
 int i, j, cnt = 0, free;

 for (j = 0; j < devinfo->ascnt; j++) {
  if (as[j].enable)
   cnt += as[j].num_chans;
 }
 if (devinfo->num_chans == 0) {
  devinfo->chans = (struct hdaa_chan *)malloc(
      sizeof(struct hdaa_chan) * cnt,
      M_HDAA, M_ZERO | M_NOWAIT);
  if (devinfo->chans == ((void*)0)) {
   device_printf(devinfo->dev,
       "Channels memory allocation failed!\n");
   return;
  }
 } else {
  devinfo->chans = (struct hdaa_chan *)realloc(devinfo->chans,
      sizeof(struct hdaa_chan) * (devinfo->num_chans + cnt),
      M_HDAA, M_ZERO | M_NOWAIT);
  if (devinfo->chans == ((void*)0)) {
   devinfo->num_chans = 0;
   device_printf(devinfo->dev,
       "Channels memory allocation failed!\n");
   return;
  }

  for (j = 0; j < devinfo->num_chans; j++)
   devinfo->chans[j].caps.fmtlist = devinfo->chans[j].fmtlist;
 }
 free = devinfo->num_chans;
 devinfo->num_chans += cnt;

 for (j = free; j < free + cnt; j++) {
  devinfo->chans[j].devinfo = devinfo;
  devinfo->chans[j].as = -1;
 }


 for (j = 0; j < devinfo->ascnt; j++) {
  if (as[j].enable == 0)
   continue;
  for (i = 0; i < as[j].num_chans; i++) {
   devinfo->chans[free].as = j;
   devinfo->chans[free].asindex = i;
   devinfo->chans[free].dir =
       (as[j].dir == HDAA_CTL_IN) ? PCMDIR_REC : PCMDIR_PLAY;
   hdaa_pcmchannel_setup(&devinfo->chans[free]);
   as[j].chans[i] = free;
   free++;
  }
 }
}
