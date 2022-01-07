
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* Z_NULL ;
 void* calloc (unsigned int,unsigned int) ;

void *
myalloc(void *q, unsigned n, unsigned m)
{
 q = Z_NULL;
 return (calloc(n, m));
}
