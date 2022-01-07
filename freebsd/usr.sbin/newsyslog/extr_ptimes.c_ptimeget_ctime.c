
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptime_data {int tsecs; } ;


 char const* ctime (int *) ;

const char *
ptimeget_ctime(const struct ptime_data *ptime)
{

 if (ptime == ((void*)0))
  return ("Null time in ptimeget_ctime()\n");

 return (ctime(&ptime->tsecs));
}
