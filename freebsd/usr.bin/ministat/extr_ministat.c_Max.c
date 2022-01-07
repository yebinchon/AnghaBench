
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {double* points; int n; } ;



__attribute__((used)) static double
Max(const struct dataset *ds)
{

 return (ds->points[ds->n -1]);
}
