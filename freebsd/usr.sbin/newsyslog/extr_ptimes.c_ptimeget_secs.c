
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct ptime_data {int tsecs; } ;



time_t
ptimeget_secs(const struct ptime_data *ptime)
{

 if (ptime == ((void*)0))
  return (-1);

 return (ptime->tsecs);
}
