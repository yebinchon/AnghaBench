
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_voice {scalar_t__ ismaster; struct emu_voice* slave; scalar_t__ stereo; int * amounts; int * routing; } ;
struct emu_sc_info {int dummy; } ;
struct emu_route {int * amounts_right; int * routing_right; int * amounts_left; int * routing_left; } ;



void
emu_vroute(struct emu_sc_info *sc, struct emu_route *rt, struct emu_voice *v)
{
 int i;

 for (i = 0; i < 8; i++) {
  v->routing[i] = rt->routing_left[i];
  v->amounts[i] = rt->amounts_left[i];
 }
 if ((v->stereo) && (v->ismaster == 0))
  for (i = 0; i < 8; i++) {
   v->routing[i] = rt->routing_right[i];
   v->amounts[i] = rt->amounts_right[i];
  }

 if ((v->stereo) && (v->slave != ((void*)0)))
  emu_vroute(sc, rt, v->slave);
}
