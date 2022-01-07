
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int recsrc; } ;



__attribute__((used)) static int
mixer_getrecsrc(struct snd_mixer *mixer)
{
 return mixer->recsrc;
}
