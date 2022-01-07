
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tm_isdst; } ;
struct ptime_data {scalar_t__ did_adj4dst; TYPE_1__ tm; int tsecs; } ;


 scalar_t__ SECS_PER_HOUR ;
 scalar_t__ TNYET_ADJ4DST ;
 TYPE_1__* localtime (int *) ;

int
ptime_adjust4dst(struct ptime_data *ptime, const struct ptime_data *dstsrc)
{
 struct ptime_data adjtime;

 if (ptime == ((void*)0))
  return (-1);





 adjtime = *ptime;


 if ((adjtime.did_adj4dst != TNYET_ADJ4DST) &&
     (adjtime.did_adj4dst == dstsrc->tm.tm_isdst))
  return (0);


 if (dstsrc->tm.tm_isdst != adjtime.tm.tm_isdst) {
  if (adjtime.tm.tm_isdst == 1)
   adjtime.tsecs -= SECS_PER_HOUR;
  else if (adjtime.tm.tm_isdst == 0)
   adjtime.tsecs += SECS_PER_HOUR;
  adjtime.tm = *(localtime(&adjtime.tsecs));

  adjtime.did_adj4dst = dstsrc->tm.tm_isdst;





 }

 *ptime = adjtime;
 return (0);
}
