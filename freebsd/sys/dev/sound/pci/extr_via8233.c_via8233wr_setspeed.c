
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct via_info {int codec_caps; int codec; } ;
struct via_chinfo {struct via_info* parent; } ;
typedef int kobj_t ;


 int AC97_EXTCAP_VRA ;
 int AC97_REGEXT_LADCRATE ;
 int ac97_setrate (int ,int ,int) ;

__attribute__((used)) static uint32_t
via8233wr_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;

 if (via->codec_caps & AC97_EXTCAP_VRA)
  return (ac97_setrate(via->codec, AC97_REGEXT_LADCRATE, speed));

 return (48000);
}
