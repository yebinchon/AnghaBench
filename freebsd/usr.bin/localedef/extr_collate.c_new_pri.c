
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
typedef int collpri_t ;
struct TYPE_4__ {scalar_t__ pass; scalar_t__ pri; int res; } ;


 int UNKNOWN ;
 int fprintf (int ,char*) ;
 int maxpri ;
 int numpri ;
 TYPE_1__* prilist ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int stderr ;

__attribute__((used)) static int32_t
new_pri(void)
{
 int i;

 if (numpri >= maxpri) {
  maxpri = maxpri ? maxpri * 2 : 1024;
  prilist = realloc(prilist, sizeof (collpri_t) * maxpri);
  if (prilist == ((void*)0)) {
   fprintf(stderr,"out of memory");
   return (-1);
  }
  for (i = numpri; i < maxpri; i++) {
   prilist[i].res = UNKNOWN;
   prilist[i].pri = 0;
   prilist[i].pass = 0;
  }
 }
 return (numpri++);
}
