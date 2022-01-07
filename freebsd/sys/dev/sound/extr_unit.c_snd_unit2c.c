
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKMASK (int ) ;
 int SND_UNIT_ASSERT () ;
 int c ;

int
snd_unit2c(int unit)
{
 SND_UNIT_ASSERT();

 return (unit & MKMASK(c));
}
