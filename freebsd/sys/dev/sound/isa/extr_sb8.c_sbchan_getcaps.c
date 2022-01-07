
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sb_chinfo {scalar_t__ dir; TYPE_1__* parent; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;
struct TYPE_2__ {int bd_id; } ;


 scalar_t__ PCMDIR_PLAY ;
 struct pcmchan_caps sb200_playcaps ;
 struct pcmchan_caps sb200_reccaps ;
 struct pcmchan_caps sb201_playcaps ;
 struct pcmchan_caps sb201_reccaps ;
 struct pcmchan_caps sbpro_playcaps ;
 struct pcmchan_caps sbpro_reccaps ;

__attribute__((used)) static struct pcmchan_caps *
sbchan_getcaps(kobj_t obj, void *data)
{
 struct sb_chinfo *ch = data;
 int p = (ch->dir == PCMDIR_PLAY)? 1 : 0;

 if (ch->parent->bd_id == 0x200)
  return p? &sb200_playcaps : &sb200_reccaps;
 if (ch->parent->bd_id < 0x300)
  return p? &sb201_playcaps : &sb201_reccaps;
 return p? &sbpro_playcaps : &sbpro_reccaps;
}
