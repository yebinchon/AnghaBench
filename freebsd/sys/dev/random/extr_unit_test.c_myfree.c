
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* Z_NULL ;
 int free (void*) ;

void myfree(void *q, void *p)
{
 q = Z_NULL;
 free(p);
}
