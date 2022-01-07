
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptime_data {int tsecs; } ;


 double difftime (int ,int ) ;

double
ptimeget_diff(const struct ptime_data *minuend, const struct
    ptime_data *subtrahend)
{


 if (minuend == ((void*)0) || subtrahend == ((void*)0))
  return (0.0);

 return (difftime(minuend->tsecs, subtrahend->tsecs));
}
