
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {struct rtentry* rt_chain; int rt_gateway; } ;
struct rt_addrinfo {int * rti_info; } ;
struct rt_delinfo {struct rtentry* head; int rnh; struct rt_addrinfo info; } ;
struct radix_node {int dummy; } ;


 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 struct rtentry* rt_unlinkrte (int ,struct rt_addrinfo*,int*) ;

__attribute__((used)) static int
rt_checkdelroute(struct radix_node *rn, void *arg)
{
 struct rt_delinfo *di;
 struct rt_addrinfo *info;
 struct rtentry *rt;
 int error;

 di = (struct rt_delinfo *)arg;
 rt = (struct rtentry *)rn;
 info = &di->info;
 error = 0;

 info->rti_info[RTAX_DST] = rt_key(rt);
 info->rti_info[RTAX_NETMASK] = rt_mask(rt);
 info->rti_info[RTAX_GATEWAY] = rt->rt_gateway;

 rt = rt_unlinkrte(di->rnh, info, &error);
 if (rt == ((void*)0)) {

  return (0);
 }


 rt->rt_chain = di->head;
 di->head = rt;

 return (0);
}
