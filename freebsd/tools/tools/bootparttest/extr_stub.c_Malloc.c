
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

void*
Malloc(size_t size, const char *file, int line)
{

 return (malloc(size));
}
