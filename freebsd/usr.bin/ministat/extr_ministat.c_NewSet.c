
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataset {int lpoints; int syy; int * points; } ;


 int NAN ;
 int assert (int ) ;
 void* calloc (int,int) ;

__attribute__((used)) static struct dataset *
NewSet(void)
{
 struct dataset *ds;

 ds = calloc(1, sizeof *ds);
 assert(ds != ((void*)0));
 ds->lpoints = 100000;
 ds->points = calloc(sizeof *ds->points, ds->lpoints);
 assert(ds->points != ((void*)0));
 ds->syy = NAN;
 return(ds);
}
