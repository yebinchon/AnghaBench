
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ratemedia {scalar_t__ match; int media; } ;


 int IFM_AUTO ;

__attribute__((used)) static int
findmedia(const struct ratemedia rates[], int n, u_int match)
{
 int i;

 for (i = 0; i < n; i++)
  if (rates[i].match == match)
   return rates[i].media;
 return IFM_AUTO;
}
