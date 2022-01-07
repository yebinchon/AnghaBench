
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,size_t) ;

void
ofwfb_bzero(void *d, size_t c)
{
 bzero(d, c);
}
