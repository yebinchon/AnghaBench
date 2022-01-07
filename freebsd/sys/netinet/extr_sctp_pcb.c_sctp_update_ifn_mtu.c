
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sctp_ifn {int ifn_mtu; } ;


 struct sctp_ifn* sctp_find_ifn (void*,int ) ;

void
sctp_update_ifn_mtu(uint32_t ifn_index, uint32_t mtu)
{
 struct sctp_ifn *sctp_ifnp;

 sctp_ifnp = sctp_find_ifn((void *)((void*)0), ifn_index);
 if (sctp_ifnp != ((void*)0)) {
  sctp_ifnp->ifn_mtu = mtu;
 }
}
