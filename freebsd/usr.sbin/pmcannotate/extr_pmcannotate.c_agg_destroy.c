
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggent {struct aggent* ag_name; } ;


 int free (struct aggent*) ;

__attribute__((used)) static void
agg_destroy(struct aggent *agg)
{

 free(agg->ag_name);
 free(agg);
}
