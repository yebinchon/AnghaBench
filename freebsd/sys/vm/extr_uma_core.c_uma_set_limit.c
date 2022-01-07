
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long uma_kmem_limit ;

void
uma_set_limit(unsigned long limit)
{

 uma_kmem_limit = limit;
}
