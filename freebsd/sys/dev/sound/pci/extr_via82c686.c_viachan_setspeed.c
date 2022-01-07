
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct via_info {int codec_caps; int codec; } ;
struct via_chinfo {scalar_t__ dir; struct via_info* parent; } ;
typedef int kobj_t ;


 int AC97_EXTCAP_VRA ;
 int AC97_REGEXT_FDACRATE ;
 int AC97_REGEXT_LADCRATE ;
 scalar_t__ PCMDIR_PLAY ;
 int ac97_setrate (int ,int,int) ;

__attribute__((used)) static u_int32_t
viachan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;
 int reg;
 if (via->codec_caps & AC97_EXTCAP_VRA) {
  reg = (ch->dir == PCMDIR_PLAY)? AC97_REGEXT_FDACRATE : AC97_REGEXT_LADCRATE;
  return ac97_setrate(via->codec, reg, speed);
 } else
  return 48000;
}
