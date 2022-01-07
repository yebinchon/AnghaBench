
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 struct pcmchan_caps ds_playcaps ;

__attribute__((used)) static struct pcmchan_caps *
ds1pchan_getcaps(kobj_t obj, void *data)
{
 return &ds_playcaps;
}
