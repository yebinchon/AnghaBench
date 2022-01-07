
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct sctp_ifa {int dummy; } ;


 int SCTP_ADDR_NOT_LOCKED ;
 struct sctp_ifa* sctp_find_ifa_by_addr (struct sockaddr*,int ,int ) ;

int
sctp_is_address_on_local_host(struct sockaddr *addr, uint32_t vrf_id)
{
 struct sctp_ifa *sctp_ifa;

 sctp_ifa = sctp_find_ifa_by_addr(addr, vrf_id, SCTP_ADDR_NOT_LOCKED);
 if (sctp_ifa) {
  return (1);
 } else {
  return (0);
 }
}
