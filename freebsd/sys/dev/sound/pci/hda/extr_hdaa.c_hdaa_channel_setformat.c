
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__* fmtlist; } ;
struct hdaa_chan {scalar_t__ fmt; TYPE_1__ caps; } ;
typedef int kobj_t ;


 int EINVAL ;

__attribute__((used)) static int
hdaa_channel_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct hdaa_chan *ch = data;
 int i;

 for (i = 0; ch->caps.fmtlist[i] != 0; i++) {
  if (format == ch->caps.fmtlist[i]) {
   ch->fmt = format;
   return (0);
  }
 }

 return (EINVAL);
}
