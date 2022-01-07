
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* malloc (size_t) ;

void *
mkuz_safe_malloc(size_t size)
{
 void *retval;

 retval = malloc(size);
 if (retval == ((void*)0)) {
  err(1, "can't allocate memory");

 }
 return retval;
}
