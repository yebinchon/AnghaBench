
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOUND_MIXER_NRDEVICES ;
 int * snd_mixernames ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;

__attribute__((used)) static int
mixer_lookup(char *devname)
{
 int i;

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
  if (strncmp(devname, snd_mixernames[i],
      strlen(snd_mixernames[i])) == 0)
   return i;
 return -1;
}
