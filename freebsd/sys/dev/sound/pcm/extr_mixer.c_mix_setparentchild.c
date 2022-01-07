
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int* parent; int* child; } ;


 int SOUND_MIXER_NRDEVICES ;

void
mix_setparentchild(struct snd_mixer *m, u_int32_t parent, u_int32_t childs)
{
 u_int32_t mask = 0;
 int i;

 if (m == ((void*)0) || parent >= SOUND_MIXER_NRDEVICES)
  return;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (i == parent)
   continue;
  if (childs & (1 << i)) {
   mask |= 1 << i;
   if (m->parent[i] < SOUND_MIXER_NRDEVICES)
    m->child[m->parent[i]] &= ~(1 << i);
   m->parent[i] = parent;
   m->child[i] = 0;
  }
 }
 mask &= ~(1 << parent);
 m->child[parent] = mask;
}
