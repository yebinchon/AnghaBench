
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct date {int dummy; } ;


 int ndaysg (struct date*) ;
 int ndaysj (struct date*) ;
 scalar_t__ nswitchb ;

__attribute__((used)) static int
sndaysb(struct date *d)
{

 if (nswitchb < ndaysj(d))
  return (ndaysg(d));
 else
  return (ndaysj(d));
}
