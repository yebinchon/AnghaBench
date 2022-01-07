
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {scalar_t__ dxs_src; } ;
struct via_chinfo {struct via_info* parent; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 struct pcmchan_caps via_caps ;
 struct pcmchan_caps via_vracaps ;

__attribute__((used)) static struct pcmchan_caps *
via8233dxs_getcaps(kobj_t obj, void *data)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;







 if (via->dxs_src)
  return (&via_vracaps);
 return (&via_caps);
}
