
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; } ;


 int RTF_DYNAMIC ;
 int RTF_HOST ;
 int RTF_UP ;

__attribute__((used)) static int
nd6_isdynrte(const struct rtentry *rt, void *xap)
{

 if (rt->rt_flags == (RTF_UP | RTF_HOST | RTF_DYNAMIC))
  return (1);

 return (0);
}
