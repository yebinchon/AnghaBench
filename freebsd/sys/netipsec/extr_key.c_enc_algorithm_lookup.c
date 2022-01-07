
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct enc_xform {int dummy; } ;
struct TYPE_3__ {int sadb_alg; struct enc_xform const* xform; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* supported_ealgs ;

const struct enc_xform *
enc_algorithm_lookup(int alg)
{
 int i;

 for (i = 0; i < nitems(supported_ealgs); i++)
  if (alg == supported_ealgs[i].sadb_alg)
   return (supported_ealgs[i].xform);
 return (((void*)0));
}
