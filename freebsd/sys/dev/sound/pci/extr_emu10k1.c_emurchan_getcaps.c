
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_rchinfo {size_t num; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 struct pcmchan_caps* emu_reccaps ;

__attribute__((used)) static struct pcmchan_caps *
emurchan_getcaps(kobj_t obj, void *data)
{
 struct sc_rchinfo *ch = data;

 return &emu_reccaps[ch->num];
}
