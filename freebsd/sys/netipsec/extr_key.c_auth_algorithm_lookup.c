
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct auth_hash {int dummy; } ;
struct TYPE_3__ {int sadb_alg; struct auth_hash const* xform; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* supported_aalgs ;

const struct auth_hash *
auth_algorithm_lookup(int alg)
{
 int i;

 for (i = 0; i < nitems(supported_aalgs); i++)
  if (alg == supported_aalgs[i].sadb_alg)
   return (supported_aalgs[i].xform);
 return (((void*)0));
}
