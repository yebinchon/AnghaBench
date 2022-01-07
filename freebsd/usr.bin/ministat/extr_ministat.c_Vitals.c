
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int n; } ;


 double Avg (struct dataset*) ;
 double Max (struct dataset*) ;
 double Median (struct dataset*) ;
 double Min (struct dataset*) ;
 double Stddev (struct dataset*) ;
 int printf (char*,...) ;
 int* symbol ;

__attribute__((used)) static void
Vitals(struct dataset *ds, int flag)
{

 printf("%c %3d %13.8g %13.8g %13.8g %13.8g %13.8g", symbol[flag],
     ds->n, Min(ds), Max(ds), Median(ds), Avg(ds), Stddev(ds));
 printf("\n");
}
