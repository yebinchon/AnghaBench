
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int bzero (void*,int ) ;

__attribute__((used)) static __inline void
pagezero(void *p)
{

 bzero(p, PAGE_SIZE);
}
