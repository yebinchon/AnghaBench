
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long uma_kmem_limit ;
 long uma_size () ;

long
uma_avail(void)
{

 return (uma_kmem_limit - uma_size());
}
