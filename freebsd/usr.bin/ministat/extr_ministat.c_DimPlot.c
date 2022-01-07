
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int dummy; } ;


 int AdjPlot (scalar_t__) ;
 scalar_t__ Avg (struct dataset*) ;
 scalar_t__ Max (struct dataset*) ;
 scalar_t__ Min (struct dataset*) ;
 scalar_t__ Stddev (struct dataset*) ;

__attribute__((used)) static void
DimPlot(struct dataset *ds)
{
 AdjPlot(Min(ds));
 AdjPlot(Max(ds));
 AdjPlot(Avg(ds) - Stddev(ds));
 AdjPlot(Avg(ds) + Stddev(ds));
}
