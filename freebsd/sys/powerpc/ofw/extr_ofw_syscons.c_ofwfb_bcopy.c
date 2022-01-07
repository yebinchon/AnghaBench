
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void const*,void*,size_t) ;

void
ofwfb_bcopy(const void *s, void *d, size_t c)
{
 bcopy(s, d, c);
}
