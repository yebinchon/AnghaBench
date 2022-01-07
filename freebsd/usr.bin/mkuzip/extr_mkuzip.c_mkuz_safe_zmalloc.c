
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,size_t) ;
 void* mkuz_safe_malloc (size_t) ;

void *
mkuz_safe_zmalloc(size_t size)
{
 void *retval;

 retval = mkuz_safe_malloc(size);
 bzero(retval, size);
 return retval;
}
