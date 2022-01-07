
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vlan_tag_present; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct oce_nic_rx_cqe_v1 {TYPE_2__ u0; } ;
struct TYPE_9__ {int vlan_tag_present; } ;
struct TYPE_10__ {TYPE_3__ s; } ;
struct oce_nic_rx_cqe {TYPE_4__ u0; } ;
struct TYPE_11__ {scalar_t__ be3_native; } ;
typedef TYPE_5__* POCE_SOFTC ;



__attribute__((used)) static int
oce_cqe_vtp_valid(POCE_SOFTC sc, struct oce_nic_rx_cqe *cqe)
{
 struct oce_nic_rx_cqe_v1 *cqe_v1;
 int vtp = 0;

 if (sc->be3_native) {
  cqe_v1 = (struct oce_nic_rx_cqe_v1 *)cqe;
  vtp = cqe_v1->u0.s.vlan_tag_present;
 } else
  vtp = cqe->u0.s.vlan_tag_present;

 return vtp;

}
