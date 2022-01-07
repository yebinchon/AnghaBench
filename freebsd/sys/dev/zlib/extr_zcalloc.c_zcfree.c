
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ZLIB ;
 int free (void*,int ) ;

void
zcfree(void *nil, void *ptr)
{

        free(ptr, M_ZLIB);
}
