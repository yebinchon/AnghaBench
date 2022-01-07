
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long svalue; int value; unsigned long time; int name; } ;


 int HISTORICAL_SCALE_2 ;
 int SAMPLEDEBUG ;
 int alignentries () ;
 int debug ;
 int highpc ;
 unsigned long lowpc ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 TYPE_1__* nl ;
 int nname ;
 int nsamples ;
 int printf (char*,double,...) ;
 double* samples ;
 int scale ;
 double totime ;

void
asgnsamples(void)
{
    register int j;
    double ccnt;
    double thetime;
    unsigned long pcl, pch;
    register int i;
    unsigned long overlap;
    unsigned long svalue0, svalue1;


    scale = highpc - lowpc;
    scale /= nsamples;
    alignentries();
    for (i = 0, j = 1; i < nsamples; i++) {
 ccnt = samples[i];
 if (ccnt == 0)
  continue;
 pcl = lowpc + (unsigned long)(scale * i);
 pch = lowpc + (unsigned long)(scale * (i + 1));
 thetime = ccnt;






 totime += thetime;
 for (j = j - 1; j < nname; j++) {
     svalue0 = nl[j].svalue;
     svalue1 = nl[j+1].svalue;




     if (pch < svalue0)
      break;




     if (pcl >= svalue1)
      continue;
     overlap = min(pch, svalue1) - max(pcl, svalue0);
     if (overlap > 0) {
  nl[j].time += overlap * thetime / scale;
     }
 }
    }





}
