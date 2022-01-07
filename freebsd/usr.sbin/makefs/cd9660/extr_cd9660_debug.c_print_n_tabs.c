
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static inline void
print_n_tabs(int n)
{
 int i;

 for (i = 1; i <= n; i ++)
  printf("\t");
}
