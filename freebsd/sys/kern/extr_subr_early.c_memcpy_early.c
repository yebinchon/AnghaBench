
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MEMCPY_EARLY_FUNC (void*,void const*,size_t) ;

void *
memcpy_early(void *to, const void *from, size_t len)
{

 return (MEMCPY_EARLY_FUNC(to, from, len));
}
