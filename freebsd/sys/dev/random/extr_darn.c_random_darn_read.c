
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int KASSERT (int,char*) ;
 scalar_t__ darn_rng_store (int *) ;

__attribute__((used)) static u_int
random_darn_read(void *buf, u_int c)
{
 u_long *b, rndval;
 u_int count;

 KASSERT(c % sizeof(*b) == 0, ("partial read %d", c));
 b = buf;
 for (count = c; count > 0; count -= sizeof(*b)) {
  if (darn_rng_store(&rndval) == 0)
   break;
  *b++ = rndval;
 }
 return (c - count);
}
