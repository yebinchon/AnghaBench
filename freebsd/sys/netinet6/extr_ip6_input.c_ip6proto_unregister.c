
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;


 int ENOENT ;
 int EPFNOSUPPORT ;
 int EPROTONOSUPPORT ;
 short IPPROTO_MAX ;
 int IPPROTO_RAW ;
 int PF_INET6 ;
 int SOCK_RAW ;
 struct protosw* inet6sw ;
 int* ip6_protox ;
 struct protosw* pffindproto (int ,int ,int ) ;

int
ip6proto_unregister(short ip6proto)
{
 struct protosw *pr;


 if (ip6proto <= 0 || ip6proto >= IPPROTO_MAX)
  return (EPROTONOSUPPORT);


 pr = pffindproto(PF_INET6, IPPROTO_RAW, SOCK_RAW);
 if (pr == ((void*)0))
  return (EPFNOSUPPORT);
 if (ip6_protox[ip6proto] == pr - inet6sw)
  return (ENOENT);


 ip6_protox[ip6proto] = pr - inet6sw;
 return (0);
}
