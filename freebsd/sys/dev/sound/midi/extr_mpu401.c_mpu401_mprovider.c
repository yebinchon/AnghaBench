
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;



__attribute__((used)) static const char *
mpu401_mprovider(struct snd_midi *m, void *arg)
{
 return "provider mpu401";
}
