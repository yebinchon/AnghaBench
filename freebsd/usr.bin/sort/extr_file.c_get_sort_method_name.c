
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sort_method; } ;


 scalar_t__ SORT_HEAPSORT ;
 int SORT_MERGESORT ;
 scalar_t__ SORT_RADIXSORT ;
 TYPE_1__ sort_opts_vals ;

__attribute__((used)) static const char *
get_sort_method_name(int sm)
{

 if (sm == SORT_MERGESORT)
  return "mergesort";
 else if (sort_opts_vals.sort_method == SORT_RADIXSORT)
  return "radixsort";
 else if (sort_opts_vals.sort_method == SORT_HEAPSORT)
  return "heapsort";
 else
  return "quicksort";
}
