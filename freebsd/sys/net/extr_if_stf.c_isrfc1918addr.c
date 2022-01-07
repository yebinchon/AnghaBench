
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int ntohl (int ) ;
 scalar_t__ stf_permit_rfc1918 ;

__attribute__((used)) static int
isrfc1918addr(struct in_addr *in)
{




 if (stf_permit_rfc1918 == 0 && (
     (ntohl(in->s_addr) & 0xff000000) >> 24 == 10 ||
     (ntohl(in->s_addr) & 0xfff00000) >> 16 == 172 * 256 + 16 ||
     (ntohl(in->s_addr) & 0xffff0000) >> 16 == 192 * 256 + 168))
  return 1;

 return 0;
}
