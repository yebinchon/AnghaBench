
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptime_data {int dummy; } ;


 int free (struct ptime_data*) ;

int
ptime_free(struct ptime_data *ptime)
{

 if (ptime == ((void*)0))
  return (-1);

 free(ptime);
 return (0);
}
