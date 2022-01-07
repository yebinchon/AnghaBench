
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKMASK (int) ;
 int SND_UNIT_ASSERT () ;
 int snd_c_shift ;

int
snd_d2unit(int d)
{
 SND_UNIT_ASSERT();

 return ((d & MKMASK(d)) << snd_c_shift);
}
