
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {int codec_caps; } ;
struct via_chinfo {struct via_info* parent; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 int AC97_EXTCAP_VRA ;
 struct pcmchan_caps via_caps ;
 struct pcmchan_caps via_vracaps ;

__attribute__((used)) static struct pcmchan_caps *
via8233wr_getcaps(kobj_t obj, void *data)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;


 if (via->codec_caps & AC97_EXTCAP_VRA)
  return (&via_vracaps);
 return (&via_caps);
}
