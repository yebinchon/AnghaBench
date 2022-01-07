
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die_startup () ;
 void* malloc (size_t) ;

__attribute__((used)) static void *malloc_startup(size_t size)
{
 void *result = malloc(size);
 if (!result)
  die_startup();
 return result;
}
