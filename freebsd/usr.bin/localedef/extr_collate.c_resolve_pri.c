
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ res; scalar_t__ pass; size_t pri; int lineno; } ;
typedef TYPE_1__ collpri_t ;


 int INTERR ;
 scalar_t__ REFER ;
 scalar_t__ RESOLVED ;
 scalar_t__ UNKNOWN ;
 int fprintf (int ,char*) ;
 TYPE_1__* get_pri (scalar_t__) ;
 int lineno ;
 size_t numpri ;
 TYPE_1__* prilist ;
 int stderr ;

__attribute__((used)) static int32_t
resolve_pri(int32_t ref)
{
 collpri_t *pri;
 static int32_t pass = 0;

 pri = get_pri(ref);
 pass++;
 while (pri->res == REFER) {
  if (pri->pass == pass) {

   lineno = pri->lineno;
   fprintf(stderr,"circular reference in order list");
   return (-1);
  }
  if ((pri->pri < 0) || (pri->pri >= numpri)) {
   INTERR;
   return (-1);
  }
  pri->pass = pass;
  pri = &prilist[pri->pri];
 }

 if (pri->res == UNKNOWN) {
  return (-1);
 }
 if (pri->res != RESOLVED)
  INTERR;

 return (pri->pri);
}
