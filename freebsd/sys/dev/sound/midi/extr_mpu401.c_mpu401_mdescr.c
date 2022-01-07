
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;



__attribute__((used)) static const char *
mpu401_mdescr(struct snd_midi *sm, void *arg, int verbosity)
{

 return "descr mpu401";
}
