
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fl_pktshift; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct adapter {TYPE_2__ params; } ;


 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;

__attribute__((used)) static inline int
mtu_to_max_payload(struct adapter *sc, int mtu)
{


 return (sc->params.sge.fl_pktshift + ETHER_HDR_LEN +
     ETHER_VLAN_ENCAP_LEN + mtu);
}
