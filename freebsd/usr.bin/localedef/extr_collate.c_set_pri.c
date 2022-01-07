
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ res_t ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ res; int pri; int lineno; } ;
typedef TYPE_1__ collpri_t ;


 int INTERR ;
 scalar_t__ REFER ;
 scalar_t__ RESOLVED ;
 scalar_t__ UNKNOWN ;
 TYPE_1__* get_pri (int ) ;
 int lineno ;
 int nextpri ;
 int numpri ;
 int warn (char*,int ) ;

__attribute__((used)) static void
set_pri(int32_t ref, int32_t v, res_t res)
{
 collpri_t *pri;

 pri = get_pri(ref);

 if ((res == REFER) && ((v < 0) || (v >= numpri))) {
  INTERR;
 }


 if ((res == REFER) && (ref == v)) {
  v = nextpri;
  res = RESOLVED;
 }

 if (pri->res != UNKNOWN) {
  warn("repeated item in order list (first on %d)",
      pri->lineno);
  return;
 }
 pri->lineno = lineno;
 pri->pri = v;
 pri->res = res;
}
