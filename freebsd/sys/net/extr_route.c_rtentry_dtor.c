
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;


 int RT_UNLOCK_COND (struct rtentry*) ;

__attribute__((used)) static void
rtentry_dtor(void *mem, int size, void *arg)
{
 struct rtentry *rt = mem;

 RT_UNLOCK_COND(rt);
}
