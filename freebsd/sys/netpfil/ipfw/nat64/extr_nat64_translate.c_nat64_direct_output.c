
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct nat64_counters {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int (* if_output ) (struct ifnet*,struct mbuf*,struct sockaddr*,int *) ;} ;


 int NAT64STAT_INC (struct nat64_counters*,int ) ;
 int nat64_log (void*,struct mbuf*,int ) ;
 int oerrors ;
 int stub1 (struct ifnet*,struct mbuf*,struct sockaddr*,int *) ;

__attribute__((used)) static int
nat64_direct_output(struct ifnet *ifp, struct mbuf *m, struct sockaddr *dst,
    struct nat64_counters *stats, void *logdata)
{
 int error;

 if (logdata != ((void*)0))
  nat64_log(logdata, m, dst->sa_family);
 error = (*ifp->if_output)(ifp, m, dst, ((void*)0));
 if (error != 0)
  NAT64STAT_INC(stats, oerrors);
 return (error);
}
