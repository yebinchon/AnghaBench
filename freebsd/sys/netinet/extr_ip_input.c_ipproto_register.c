
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct protosw {short pr_protocol; TYPE_1__* pr_domain; } ;
struct TYPE_4__ {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; } ;
struct TYPE_3__ {scalar_t__ dom_family; } ;


 int EEXIST ;
 int EPFNOSUPPORT ;
 int EPROTONOSUPPORT ;
 short IPPROTO_MAX ;
 int IPPROTO_RAW ;
 scalar_t__ PF_INET ;
 int SOCK_RAW ;
 TYPE_2__ inetdomain ;
 struct protosw* inetsw ;
 int* ip_protox ;
 struct protosw* pffindproto (scalar_t__,int ,int ) ;

int
ipproto_register(short ipproto)
{
 struct protosw *pr;


 if (ipproto <= 0 || ipproto >= IPPROTO_MAX)
  return (EPROTONOSUPPORT);





 pr = pffindproto(PF_INET, IPPROTO_RAW, SOCK_RAW);
 if (pr == ((void*)0))
  return (EPFNOSUPPORT);
 if (ip_protox[ipproto] != pr - inetsw)
  return (EEXIST);


 for (pr = inetdomain.dom_protosw;
      pr < inetdomain.dom_protoswNPROTOSW; pr++) {
  if (pr->pr_domain->dom_family == PF_INET &&
      pr->pr_protocol && pr->pr_protocol == ipproto) {
   ip_protox[pr->pr_protocol] = pr - inetsw;
   return (0);
  }
 }
 return (EPROTONOSUPPORT);
}
