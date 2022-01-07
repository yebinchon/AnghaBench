
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {double syy; unsigned int n; double const* points; } ;


 double Avg (struct dataset*) ;
 scalar_t__ isnan (double) ;

__attribute__((used)) static double
Var(struct dataset *ds)
{
 unsigned n;
 const double a = Avg(ds);

 if (isnan(ds->syy)) {
  ds->syy = 0.0;
  for (n = 0; n < ds->n; n++)
   ds->syy += (ds->points[n] - a) * (ds->points[n] - a);
 }

 return (ds->syy / (ds->n - 1.0));
}
