
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UMA_ALIGN_CACHE ;
 int uma_align_cache ;

void
uma_set_align(int align)
{

 if (align != UMA_ALIGN_CACHE)
  uma_align_cache = align;
}
