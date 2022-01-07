
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_exp (int *) ;
 int * v4root_ep ;

__attribute__((used)) static void
free_v4rootexp(void)
{

 if (v4root_ep != ((void*)0)) {
  free_exp(v4root_ep);
  v4root_ep = ((void*)0);
 }
}
