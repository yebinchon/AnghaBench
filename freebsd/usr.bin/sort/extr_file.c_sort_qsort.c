
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qsort (void*,size_t,size_t,int (*) (void const*,void const*)) ;

__attribute__((used)) static int sort_qsort(void *list, size_t count, size_t elem_size,
    int (*cmp_func)(const void *, const void *))
{

 qsort(list, count, elem_size, cmp_func);
 return (0);
}
