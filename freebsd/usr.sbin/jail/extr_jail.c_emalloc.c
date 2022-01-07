
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* malloc (size_t) ;

void *
emalloc(size_t size)
{
 void *p;

 p = malloc(size);
 if (!p)
  err(1, "malloc");
 return p;
}
