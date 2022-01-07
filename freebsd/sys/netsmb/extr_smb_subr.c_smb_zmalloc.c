
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 int M_ZERO ;
 void* malloc (size_t,struct malloc_type*,int) ;

void *
smb_zmalloc(size_t size, struct malloc_type *type, int flags)
{

 return malloc(size, type, flags | M_ZERO);
}
