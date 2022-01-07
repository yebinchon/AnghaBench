
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plot {double min; double max; double span; double dx; double width; double x0; } ;


 struct plot plot ;

__attribute__((used)) static void
AdjPlot(double a)
{
 struct plot *pl;

 pl = &plot;
 if (a < pl->min)
  pl->min = a;
 if (a > pl->max)
  pl->max = a;
 pl->span = pl->max - pl->min;
 pl->dx = pl->span / (pl->width - 1.0);
 pl->x0 = pl->min - .5 * pl->dx;
}
