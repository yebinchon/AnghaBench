
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_link {int dummy; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;


 int ProxyEncodeIpHeader (struct ip*,int) ;
 int ProxyEncodeTcpStream (struct alias_link*,struct ip*,int) ;

void
ProxyModify(struct libalias *la, struct alias_link *lnk,
    struct ip *pip,
    int maxpacketsize,
    int proxy_type)
{

 LIBALIAS_LOCK_ASSERT(la);
 (void)la;

 switch (proxy_type) {
  case 129:
  ProxyEncodeIpHeader(pip, maxpacketsize);
  break;

 case 128:
  ProxyEncodeTcpStream(lnk, pip, maxpacketsize);
  break;
 }
}
