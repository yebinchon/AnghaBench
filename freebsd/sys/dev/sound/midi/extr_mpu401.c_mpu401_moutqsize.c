
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;



int
mpu401_moutqsize(struct snd_midi *sm, void *arg)
{
 return 128;
}
