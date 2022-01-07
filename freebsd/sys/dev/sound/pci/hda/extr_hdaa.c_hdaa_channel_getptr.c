
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdaa_devinfo {int dev; } ;
struct hdaa_chan {int* dmapos; scalar_t__ dir; int blksz; int blkcnt; int sid; struct hdaa_devinfo* devinfo; } ;
typedef int kobj_t ;


 int HDAC_STREAM_GETPTR (int ,int ,int,int ) ;
 int HDA_BLK_ALIGN ;
 scalar_t__ PCMDIR_PLAY ;
 int device_get_parent (int ) ;
 int hdaa_lock (struct hdaa_devinfo*) ;
 int hdaa_unlock (struct hdaa_devinfo*) ;

__attribute__((used)) static uint32_t
hdaa_channel_getptr(kobj_t obj, void *data)
{
 struct hdaa_chan *ch = data;
 struct hdaa_devinfo *devinfo = ch->devinfo;
 uint32_t ptr;

 hdaa_lock(devinfo);
 if (ch->dmapos != ((void*)0)) {
  ptr = *(ch->dmapos);
 } else {
  ptr = HDAC_STREAM_GETPTR(
      device_get_parent(devinfo->dev), devinfo->dev,
      ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
 }
 hdaa_unlock(devinfo);




 ptr %= ch->blksz * ch->blkcnt;
 ptr &= HDA_BLK_ALIGN;

 return (ptr);
}
