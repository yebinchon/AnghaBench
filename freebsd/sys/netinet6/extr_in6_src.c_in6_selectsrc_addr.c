
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; int sin6_scope_id; struct in6_addr sin6_addr; int sin6_family; } ;
struct ifnet {int dummy; } ;
typedef int dst_sa ;


 int AF_INET6 ;
 int bzero (struct sockaddr_in6*,int) ;
 int in6_selecthlim (int *,struct ifnet*) ;
 int in6_selectsrc (int ,struct sockaddr_in6*,int *,int *,int *,struct ifnet**,struct in6_addr*) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;

int
in6_selectsrc_addr(uint32_t fibnum, const struct in6_addr *dst,
    uint32_t scopeid, struct ifnet *ifp, struct in6_addr *srcp,
    int *hlim)
{
 struct ifnet *retifp;
 struct sockaddr_in6 dst_sa;
 int error;

 retifp = ifp;
 bzero(&dst_sa, sizeof(dst_sa));
 dst_sa.sin6_family = AF_INET6;
 dst_sa.sin6_len = sizeof(dst_sa);
 dst_sa.sin6_addr = *dst;
 dst_sa.sin6_scope_id = scopeid;
 sa6_embedscope(&dst_sa, 0);

 error = in6_selectsrc(fibnum, &dst_sa, ((void*)0), ((void*)0), ((void*)0), &retifp, srcp);
 if (hlim != ((void*)0))
  *hlim = in6_selecthlim(((void*)0), retifp);

 return (error);
}
