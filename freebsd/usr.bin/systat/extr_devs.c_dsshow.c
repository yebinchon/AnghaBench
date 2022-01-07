
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statinfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ selected; } ;


 TYPE_1__* dev_select ;
 int dsshow3 (int,int,int,int,struct statinfo*,struct statinfo*) ;
 int num_devices ;

void
dsshow(int maxdrives, int diskcol, int diskrow, struct statinfo *now, struct statinfo *then)
{
 int i, lc;

 for (i = 0, lc = 0; i < num_devices && lc < maxdrives; i++)
  if (dev_select[i].selected)
   dsshow3(diskcol, diskrow, i, ++lc, now, then);
}
