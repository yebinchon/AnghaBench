
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {scalar_t__ rt_ifa; int rt_flags; } ;
struct in_ifadown_arg {scalar_t__ ifa; scalar_t__ del; } ;


 int RTF_STATIC ;

__attribute__((used)) static int
in_ifadownkill(const struct rtentry *rt, void *xap)
{
 struct in_ifadown_arg *ap = xap;

 if (rt->rt_ifa != ap->ifa)
  return (0);

 if ((rt->rt_flags & RTF_STATIC) != 0 && ap->del == 0)
  return (0);

 return (1);
}
