
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; struct ifnet* rt_ifp; } ;
struct ifnet {int dummy; } ;


 int RTF_UP ;

__attribute__((used)) static int
rt_ifdelroute(const struct rtentry *rt, void *arg)
{
 struct ifnet *ifp = arg;

 if (rt->rt_ifp != ifp)
  return (0);





 if ((rt->rt_flags & RTF_UP) == 0)
  return (0);

 return (1);
}
