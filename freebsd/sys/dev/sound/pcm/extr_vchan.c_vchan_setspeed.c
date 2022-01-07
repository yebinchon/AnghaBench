
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int maxspeed; } ;
struct vchan_info {TYPE_1__ caps; int channel; } ;
typedef int kobj_t ;


 int CHN_LOCKASSERT (int ) ;

__attribute__((used)) static uint32_t
vchan_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct vchan_info *info;

 info = data;

 CHN_LOCKASSERT(info->channel);

 return (info->caps.maxspeed);
}
