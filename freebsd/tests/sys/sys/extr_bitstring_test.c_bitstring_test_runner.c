
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testfunc_t ;


 int _BITSTR_BITS ;
 int bitstring_run_heap_test (int *,int const) ;
 int bitstring_run_stack_test (int *,int const) ;
 unsigned long nitems (int const*) ;

__attribute__((used)) static void
bitstring_test_runner(testfunc_t *test)
{
 const int bitstr_sizes[] = {
  0,
  1,
  _BITSTR_BITS - 1,
  _BITSTR_BITS,
  _BITSTR_BITS + 1,
  2 * _BITSTR_BITS - 1,
  2 * _BITSTR_BITS,
  1023,
  1024
 };

 for (unsigned long i = 0; i < nitems(bitstr_sizes); i++) {
  bitstring_run_stack_test(test, bitstr_sizes[i]);
  bitstring_run_heap_test(test, bitstr_sizes[i]);
 }
}
