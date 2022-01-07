
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct comp_algo {int dummy; } ;
struct TYPE_3__ {int sadb_alg; struct comp_algo const* xform; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* supported_calgs ;

const struct comp_algo *
comp_algorithm_lookup(int alg)
{
 int i;

 for (i = 0; i < nitems(supported_calgs); i++)
  if (alg == supported_calgs[i].sadb_alg)
   return (supported_calgs[i].xform);
 return (((void*)0));
}
