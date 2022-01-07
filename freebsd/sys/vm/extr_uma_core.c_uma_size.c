
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atomic_load_long (int *) ;
 int uma_kmem_total ;

unsigned long
uma_size(void)
{

 return (atomic_load_long(&uma_kmem_total));
}
