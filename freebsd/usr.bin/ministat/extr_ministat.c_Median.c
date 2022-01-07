
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int n; int* points; } ;



__attribute__((used)) static double
Median(const struct dataset *ds)
{
 const unsigned m = ds->n / 2;

 if ((ds->n % 2) == 0)
  return ((ds->points[m] + (ds->points[m - 1])) / 2);
 return (ds->points[m]);
}
