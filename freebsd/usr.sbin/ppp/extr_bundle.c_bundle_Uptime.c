
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int upat; } ;


 int time (int *) ;

int
bundle_Uptime(struct bundle *bundle)
{
  if (bundle->upat)
    return time(((void*)0)) - bundle->upat;

  return 0;
}
