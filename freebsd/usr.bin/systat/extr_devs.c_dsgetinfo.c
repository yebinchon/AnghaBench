
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statinfo {TYPE_1__* dinfo; } ;
struct TYPE_2__ {int generation; int numdevs; } ;


 int cmdkre (char*,int *) ;
 int devstat_errbuf ;
 int devstat_getdevs (int *,struct statinfo*) ;
 int errx (int,char*,int ) ;
 int generation ;
 int num_devices ;

void
dsgetinfo(struct statinfo* dev)
{
 switch (devstat_getdevs(((void*)0), dev)) {
 case -1:
  errx(1, "%s", devstat_errbuf);
  break;
 case 1:
  num_devices = dev->dinfo->numdevs;
  generation = dev->dinfo->generation;
  cmdkre("refresh", ((void*)0));
  break;
 default:
  break;
 }
}
