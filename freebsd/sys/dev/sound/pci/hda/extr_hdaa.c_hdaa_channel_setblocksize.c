
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct hdaa_chan {int blksz; TYPE_1__* pdevinfo; } ;
typedef int kobj_t ;
struct TYPE_2__ {int chan_blkcnt; } ;


 int hdaa_channel_setfragments (int ,void*,int ,int ) ;

__attribute__((used)) static uint32_t
hdaa_channel_setblocksize(kobj_t obj, void *data, uint32_t blksz)
{
 struct hdaa_chan *ch = data;

 hdaa_channel_setfragments(obj, data, blksz, ch->pdevinfo->chan_blkcnt);

 return (ch->blksz);
}
