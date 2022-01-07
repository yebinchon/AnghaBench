
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;


 int mpu401_mcallback (struct snd_midi*,void*,int) ;

__attribute__((used)) static void
mpu401_mcallbackp(struct snd_midi *sm, void *arg, int flags)
{

 mpu401_mcallback(sm, arg, flags);
}
