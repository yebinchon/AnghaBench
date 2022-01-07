
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test { ____Placeholder_test } test ;
typedef enum sort { ____Placeholder_sort } sort ;


 int EX_DATAERR ;





 int exit (int ) ;
 int partial_bench (int,int) ;
 int rand_bench (int,int) ;
 int reverse_bench (int,int) ;
 int sort_bench (int,int) ;

__attribute__((used)) static void
run_bench(enum sort s, enum test t, int runs, int elts)
{
 for (int i = 0; i < runs; i++) {
  switch (t) {
  case 130:
   rand_bench(elts, s);
   break;
  case 128:
   sort_bench(elts, s);
   break;
  case 131:
   partial_bench(elts, s);
   break;
  case 129:
   reverse_bench(elts, s);
   break;

  case 132:
   exit(EX_DATAERR);
  }
 }
}
