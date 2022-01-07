
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
xmalloc(size_t size)
{
 void *newptr;

 if ((newptr = malloc(size)) == ((void*)0))
  err(1, "malloc()");
 return (newptr);
}
