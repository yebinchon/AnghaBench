
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int UMA_ANYDOMAIN ;
 void* uma_large_malloc_domain (int ,int ,int) ;

void *
uma_large_malloc(vm_size_t size, int wait)
{

 return uma_large_malloc_domain(size, UMA_ANYDOMAIN, wait);
}
