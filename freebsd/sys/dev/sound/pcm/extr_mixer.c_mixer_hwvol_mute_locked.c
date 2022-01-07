
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int hwvol_mixer; int hwvol_mute_level; scalar_t__ hwvol_muted; } ;


 int mixer_get (struct snd_mixer*,int ) ;
 int mixer_set (struct snd_mixer*,int ,int ) ;

void
mixer_hwvol_mute_locked(struct snd_mixer *m)
{
 if (m->hwvol_muted) {
  m->hwvol_muted = 0;
  mixer_set(m, m->hwvol_mixer, m->hwvol_mute_level);
 } else {
  m->hwvol_muted++;
  m->hwvol_mute_level = mixer_get(m, m->hwvol_mixer);
  mixer_set(m, m->hwvol_mixer, 0);
 }
}
