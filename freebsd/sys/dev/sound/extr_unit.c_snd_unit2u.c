
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKMASK (int ) ;
 int SND_UNIT_ASSERT () ;
 int snd_c_shift ;
 int snd_d_shift ;
 int u ;

int
snd_unit2u(int unit)
{
 SND_UNIT_ASSERT();

 return ((unit >> (snd_c_shift + snd_d_shift)) & MKMASK(u));
}
