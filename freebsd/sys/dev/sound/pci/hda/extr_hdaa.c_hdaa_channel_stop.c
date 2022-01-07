
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int widget_cap; } ;
struct hdaa_widget {TYPE_1__ param; } ;
struct hdaa_devinfo {int dev; } ;
struct hdaa_chan {int flags; scalar_t__ dir; int* io; int sid; struct hdaa_devinfo* devinfo; } ;


 int HDAA_CHN_RUNNING ;
 int HDAC_STREAM_FREE (int ,int ,int,int ) ;
 int HDAC_STREAM_STOP (int ,int ,int,int ) ;
 int HDA_CMD_SET_CONV_STREAM_CHAN (int ,int,int ) ;
 int HDA_CMD_SET_DIGITAL_CONV_FMT1 (int ,int,int ) ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL (int ) ;
 scalar_t__ PCMDIR_PLAY ;
 int device_get_parent (int ) ;
 int hda_command (int ,int ) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;

__attribute__((used)) static void
hdaa_channel_stop(struct hdaa_chan *ch)
{
 struct hdaa_devinfo *devinfo = ch->devinfo;
 struct hdaa_widget *w;
 int i;

 if ((ch->flags & HDAA_CHN_RUNNING) == 0)
  return;
 ch->flags &= ~HDAA_CHN_RUNNING;
 HDAC_STREAM_STOP(device_get_parent(devinfo->dev), devinfo->dev,
     ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
 for (i = 0; ch->io[i] != -1; i++) {
  w = hdaa_widget_get(ch->devinfo, ch->io[i]);
  if (w == ((void*)0))
   continue;
  if (HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(w->param.widget_cap)) {
   hda_command(devinfo->dev,
       HDA_CMD_SET_DIGITAL_CONV_FMT1(0, ch->io[i], 0));
  }
  hda_command(devinfo->dev,
      HDA_CMD_SET_CONV_STREAM_CHAN(0, ch->io[i],
      0));
 }
 HDAC_STREAM_FREE(device_get_parent(devinfo->dev), devinfo->dev,
     ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
}
