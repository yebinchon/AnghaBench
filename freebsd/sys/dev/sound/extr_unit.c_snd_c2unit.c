
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKMASK (int) ;
 int SND_UNIT_ASSERT () ;

int
snd_c2unit(int c)
{
 SND_UNIT_ASSERT();

 return (c & MKMASK(c));
}
