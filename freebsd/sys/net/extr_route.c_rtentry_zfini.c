
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_pksent; } ;


 int RT_LOCK_DESTROY (struct rtentry*) ;
 int counter_u64_free (int ) ;

__attribute__((used)) static void
rtentry_zfini(void *mem, int size)
{
 struct rtentry *rt = mem;

 RT_LOCK_DESTROY(rt);
 counter_u64_free(rt->rt_pksent);
}
