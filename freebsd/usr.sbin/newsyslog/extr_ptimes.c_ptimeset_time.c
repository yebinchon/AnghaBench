
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct ptime_data {scalar_t__ parseopts; int tsecs; int tm; } ;


 int * localtime (int *) ;

int
ptimeset_time(struct ptime_data *ptime, time_t secs)
{

 if (ptime == ((void*)0))
  return (-1);

 ptime->tsecs = secs;
 ptime->tm = *(localtime(&ptime->tsecs));
 ptime->parseopts = 0;

 return (0);
}
