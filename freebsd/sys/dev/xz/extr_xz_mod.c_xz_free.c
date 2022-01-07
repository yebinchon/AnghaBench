
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XZ_DEC ;
 int free (void*,int ) ;

void
xz_free(void *addr)
{

 free(addr, XZ_DEC);
}
