
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdaa_devinfo {int dev; } ;
struct hdaa_chan {int stripecap; scalar_t__ sid; scalar_t__ dir; int flags; int blkcnt; int blksz; int b; int dmapos; scalar_t__ stripectl; struct hdaa_devinfo* devinfo; } ;


 int EBUSY ;
 int HDAA_CHN_RUNNING ;
 scalar_t__ HDAC_STREAM_ALLOC (int ,int ,int,int ,scalar_t__,int *) ;
 int HDAC_STREAM_RESET (int ,int ,int,scalar_t__) ;
 int HDAC_STREAM_START (int ,int ,int,scalar_t__,int ,int ,int ) ;
 scalar_t__ PCMDIR_PLAY ;
 int device_get_parent (int ) ;
 scalar_t__ fls (int) ;
 int hda_get_stripes_mask (int ) ;
 int hdaa_allowed_stripes (int ) ;
 int hdaa_audio_setup (struct hdaa_chan*) ;
 int hdaa_stream_format (struct hdaa_chan*) ;
 int sndbuf_getbufaddr (int ) ;

__attribute__((used)) static int
hdaa_channel_start(struct hdaa_chan *ch)
{
 struct hdaa_devinfo *devinfo = ch->devinfo;
 uint32_t fmt;

 fmt = hdaa_stream_format(ch);
 ch->stripectl = fls(ch->stripecap & hdaa_allowed_stripes(fmt) &
     hda_get_stripes_mask(devinfo->dev)) - 1;
 ch->sid = HDAC_STREAM_ALLOC(device_get_parent(devinfo->dev), devinfo->dev,
     ch->dir == PCMDIR_PLAY ? 1 : 0, fmt, ch->stripectl, &ch->dmapos);
 if (ch->sid <= 0)
  return (EBUSY);
 hdaa_audio_setup(ch);
 HDAC_STREAM_RESET(device_get_parent(devinfo->dev), devinfo->dev,
     ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
 HDAC_STREAM_START(device_get_parent(devinfo->dev), devinfo->dev,
     ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid,
     sndbuf_getbufaddr(ch->b), ch->blksz, ch->blkcnt);
 ch->flags |= HDAA_CHN_RUNNING;
 return (0);
}
