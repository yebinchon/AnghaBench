
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 void* calloc (size_t,int) ;
 scalar_t__ no_alloc ;

__attribute__((used)) static void *
_Malloc(size_t foo, int line)
{

 KASSERT(no_alloc == 0, ("malloc in wrong place() line %d", line));
 return (calloc(foo, 1));
}
