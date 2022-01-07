
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int NSHUFF ;
 int random () ;
 int randseed ;

void
srandom(u_long seed)
{
 int i;

 randseed = seed;
 for (i = 0; i < NSHUFF; i++)
  (void)random();
}
