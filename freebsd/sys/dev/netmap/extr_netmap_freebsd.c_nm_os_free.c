
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int free (void*,int ) ;

void
nm_os_free(void *addr)
{
 free(addr, M_DEVBUF);
}
