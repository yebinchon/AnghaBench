
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 void* contigmalloc (int,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static __inline void *__get_free_pages(int order)
{

 return contigmalloc(PAGE_SIZE<<order,
   M_DEVBUF, M_WAITOK, BUS_SPACE_MAXADDR_24BIT, BUS_SPACE_MAXADDR, PAGE_SIZE, 0);
}
