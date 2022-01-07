
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {double sy; double n; } ;



__attribute__((used)) static double
Avg(const struct dataset *ds)
{

 return(ds->sy / ds->n);
}
