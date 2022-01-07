
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {void* devinfo; } ;



void *
mix_getdevinfo(struct snd_mixer *m)
{
 return m->devinfo;
}
