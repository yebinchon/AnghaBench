
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ T_HMAC ;
 TYPE_1__* algs ;
 size_t nitems (TYPE_1__*) ;
 int run_test_sizes (TYPE_1__*,size_t*,size_t) ;

__attribute__((used)) static void
run_hmac_tests(size_t *sizes, u_int nsizes)
{
 u_int i;

 for (i = 0; i < nitems(algs); i++)
  if (algs[i].type == T_HMAC)
   run_test_sizes(&algs[i], sizes, nsizes);
}
