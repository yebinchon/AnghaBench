
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int fmtlist; } ;
struct vchan_info {TYPE_1__ caps; int channel; } ;
typedef int kobj_t ;


 int CHN_LOCKASSERT (int ) ;
 int snd_fmtvalid (int ,int ) ;

__attribute__((used)) static int
vchan_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct vchan_info *info;

 info = data;

 CHN_LOCKASSERT(info->channel);

 if (!snd_fmtvalid(format, info->caps.fmtlist))
  return (-1);

 return (0);
}
