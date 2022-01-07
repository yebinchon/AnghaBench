
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int rt_flags; struct sockaddr* rt_gateway; } ;
struct rt_addrinfo {int rti_flags; scalar_t__ (* rti_filter ) (struct rtentry*,int ) ;struct sockaddr** rti_info; int rti_filterdata; } ;
struct rib_head {int head; struct radix_node* (* rnh_deladdr ) (struct sockaddr*,struct sockaddr*,int *) ;scalar_t__ (* rnh_lookup ) (struct sockaddr*,struct sockaddr*,int *) ;} ;
struct radix_node {int rn_flags; } ;


 int EADDRINUSE ;
 int ENOENT ;
 int ESRCH ;
 int RNF_ACTIVE ;
 int RNF_ROOT ;
 struct rtentry* RNTORT (struct radix_node*) ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTF_PINNED ;
 int RTF_UP ;
 int RT_ADDREF (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 int panic (char*) ;
 scalar_t__ rt_mpath_capable (struct rib_head*) ;
 struct radix_node* rt_mpath_unlink (struct rib_head*,struct rt_addrinfo*,struct rtentry*,int*) ;
 scalar_t__ stub1 (struct sockaddr*,struct sockaddr*,int *) ;
 scalar_t__ stub2 (struct rtentry*,int ) ;
 struct radix_node* stub3 (struct sockaddr*,struct sockaddr*,int *) ;

__attribute__((used)) static struct rtentry *
rt_unlinkrte(struct rib_head *rnh, struct rt_addrinfo *info, int *perror)
{
 struct sockaddr *dst, *netmask;
 struct rtentry *rt;
 struct radix_node *rn;

 dst = info->rti_info[RTAX_DST];
 netmask = info->rti_info[RTAX_NETMASK];

 rt = (struct rtentry *)rnh->rnh_lookup(dst, netmask, &rnh->head);
 if (rt == ((void*)0)) {
  *perror = ESRCH;
  return (((void*)0));
 }

 if ((info->rti_flags & RTF_PINNED) == 0) {

  if (rt->rt_flags & RTF_PINNED) {
   *perror = EADDRINUSE;
   return (((void*)0));
  }
 }

 if (info->rti_filter != ((void*)0)) {
  if (info->rti_filter(rt, info->rti_filterdata) == 0) {

   *perror = ENOENT;
   return (((void*)0));
  }






  info->rti_info[RTAX_GATEWAY] = rt->rt_gateway;
 }





 *perror = ESRCH;





 rn = rnh->rnh_deladdr(dst, netmask, &rnh->head);
 if (rn == ((void*)0))
  return (((void*)0));

 if (rn->rn_flags & (RNF_ACTIVE | RNF_ROOT))
  panic ("rtrequest delete");

 rt = RNTORT(rn);
 RT_LOCK(rt);
 RT_ADDREF(rt);
 rt->rt_flags &= ~RTF_UP;

 *perror = 0;

 return (rt);
}
