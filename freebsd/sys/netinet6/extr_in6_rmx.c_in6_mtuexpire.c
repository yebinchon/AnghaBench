
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; int rt_expire; } ;
struct mtuex_arg {int nextstop; } ;


 int RTF_PROBEMTU ;
 int lmin (int ,int ) ;
 int time_uptime ;

__attribute__((used)) static int
in6_mtuexpire(struct rtentry *rt, void *rock)
{
 struct mtuex_arg *ap = rock;

 if (rt->rt_expire && !(rt->rt_flags & RTF_PROBEMTU)) {
  if (rt->rt_expire <= time_uptime) {
   rt->rt_flags |= RTF_PROBEMTU;
  } else {
   ap->nextstop = lmin(ap->nextstop, rt->rt_expire);
  }
 }

 return (0);
}
