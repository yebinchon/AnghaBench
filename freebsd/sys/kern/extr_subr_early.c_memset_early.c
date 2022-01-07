
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MEMSET_EARLY_FUNC (void*,int,size_t) ;

void *
memset_early(void *buf, int c, size_t len)
{

 return (MEMSET_EARLY_FUNC(buf, c, len));
}
