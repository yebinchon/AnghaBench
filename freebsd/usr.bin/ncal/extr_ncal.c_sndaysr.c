
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct date {int dummy; } ;


 int ndaysg (struct date*) ;
 int ndaysj (struct date*) ;
 scalar_t__ nswitch ;

__attribute__((used)) static int
sndaysr(struct date *d)
{

 if (nswitch != 0)
  if (nswitch < ndaysj(d))
   return (ndaysg(d));
  else
   return (ndaysj(d));
 else
  return ndaysg(d);
}
