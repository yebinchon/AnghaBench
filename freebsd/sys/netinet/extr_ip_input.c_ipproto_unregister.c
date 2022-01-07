
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
 int PF_INET ;
 int SOCK_RAW ;
 struct protosw* inetsw ;
 int* ip_protox ;
 struct protosw* pffindproto (int ,int ,int ) ;

int
ipproto_unregister(short ipproto)
{
 struct protosw *pr;


 if (ipproto <= 0 || ipproto >= IPPROTO_MAX)
  return (EPROTONOSUPPORT);


 pr = pffindproto(PF_INET, IPPROTO_RAW, SOCK_RAW);
 if (pr == ((void*)0))
  return (EPFNOSUPPORT);
 if (ip_protox[ipproto] == pr - inetsw)
  return (ENOENT);


 ip_protox[ipproto] = pr - inetsw;
 return (0);
}
