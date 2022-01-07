
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int PAGE_SIZE ;
 int contigfree (void*,int,int ) ;

__attribute__((used)) static __inline void free_pages(void *p, int order)
{
 contigfree(p, PAGE_SIZE<<order, M_DEVBUF);
}
