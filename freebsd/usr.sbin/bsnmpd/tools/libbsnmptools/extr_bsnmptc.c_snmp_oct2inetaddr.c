
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in_addr {int s_addr; } ;
struct in6_addr {int * s6_addr; } ;


 int AF_INET ;
 int AF_INET6 ;
 int MAX_OCTSTRING_LEN ;
 int SNMP_INADDRS_STRSZ ;
 int * inet_ntop (int,void*,char*,int ) ;
 int memcpy (int *,char*,int) ;
 int warn (char*) ;

__attribute__((used)) static char *
snmp_oct2inetaddr(uint32_t len, char *octets, char *buf)
{
 int af;
 void *ip;
 struct in_addr ipv4;
 struct in6_addr ipv6;

 if (len > MAX_OCTSTRING_LEN || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 switch (len) {

  case 4:
   memcpy(&ipv4.s_addr, octets, sizeof(ipv4.s_addr));
   af = AF_INET;
   ip = &ipv4;
   break;


  case 16:
   memcpy(ipv6.s6_addr, octets, sizeof(ipv6.s6_addr));
   af = AF_INET6;
   ip = &ipv6;
   break;

  default:
   return (((void*)0));
 }

 if (inet_ntop(af, ip, buf, SNMP_INADDRS_STRSZ) == ((void*)0)) {
  warn("inet_ntop failed");
  return (((void*)0));
 }

 return (buf);
}
