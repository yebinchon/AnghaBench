
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct alg {int dummy; } ;


 int run_test (struct alg*,size_t) ;

__attribute__((used)) static void
run_test_sizes(struct alg *alg, size_t *sizes, u_int nsizes)
{
 u_int i;

 for (i = 0; i < nsizes; i++)
  run_test(alg, sizes[i]);
}
