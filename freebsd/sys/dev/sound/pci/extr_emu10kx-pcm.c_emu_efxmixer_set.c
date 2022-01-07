
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;



__attribute__((used)) static int
emu_efxmixer_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 if (left + right == 200) return (0);
 return (0);
}
