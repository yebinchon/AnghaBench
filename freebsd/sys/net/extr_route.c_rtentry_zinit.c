
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int * rt_pksent; } ;


 int ENOMEM ;
 int RT_LOCK_INIT (struct rtentry*) ;
 int * counter_u64_alloc (int) ;

__attribute__((used)) static int
rtentry_zinit(void *mem, int size, int how)
{
 struct rtentry *rt = mem;

 rt->rt_pksent = counter_u64_alloc(how);
 if (rt->rt_pksent == ((void*)0))
  return (ENOMEM);

 RT_LOCK_INIT(rt);

 return (0);
}
