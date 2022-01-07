
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int dummy; } ;


 int Var (struct dataset*) ;
 double sqrt (int ) ;

__attribute__((used)) static double
Stddev(struct dataset *ds)
{

 return sqrt(Var(ds));
}
