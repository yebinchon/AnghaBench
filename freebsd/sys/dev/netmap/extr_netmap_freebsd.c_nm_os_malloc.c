
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* malloc (size_t,int ,int) ;

void *
nm_os_malloc(size_t size)
{
 return malloc(size, M_DEVBUF, M_NOWAIT | M_ZERO);
}
