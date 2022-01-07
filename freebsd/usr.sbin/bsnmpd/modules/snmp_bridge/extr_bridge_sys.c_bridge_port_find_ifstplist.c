
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct ifbpstpreq {scalar_t__ ifbp_portno; } ;



__attribute__((used)) static struct ifbpstpreq *
bridge_port_find_ifstplist(uint8_t port_no, struct ifbpstpreq *buf,
    uint32_t buf_len)
{
 uint32_t i;
 struct ifbpstpreq *bstp;

 for (i = 0; i < buf_len / sizeof(struct ifbpstpreq); i++) {
  bstp = buf + i;
  if (bstp->ifbp_portno == port_no)
   return (bstp);
 }

 return (((void*)0));
}
