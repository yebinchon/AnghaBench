
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* sin_port; } ;
struct TYPE_8__ {TYPE_3__ in4; } ;
struct TYPE_5__ {void* sin_port; } ;
struct TYPE_6__ {TYPE_1__ in4; } ;
struct vxlan_softc {int vxl_ftable_timeout; int vxl_ftable_max; int vxl_max_port; int vxl_min_port; TYPE_4__ vxl_dst_addr; TYPE_2__ vxl_src_addr; int vxl_ttl; int vxl_vni; int vxl_flags; } ;


 int IPDEFTTL ;
 int VXLAN_FLAG_LEARN ;
 int VXLAN_FTABLE_MAX ;
 int VXLAN_FTABLE_TIMEOUT ;
 int VXLAN_LEGACY_PORT ;
 int VXLAN_PORT ;
 int VXLAN_VNI_MAX ;
 int V_ipport_firstauto ;
 int V_ipport_lastauto ;
 void* htons (int ) ;
 int vxlan_legacy_port ;
 int vxlan_tunable_int (struct vxlan_softc*,char*,int ) ;

__attribute__((used)) static void
vxlan_set_default_config(struct vxlan_softc *sc)
{

 sc->vxl_flags |= VXLAN_FLAG_LEARN;

 sc->vxl_vni = VXLAN_VNI_MAX;
 sc->vxl_ttl = IPDEFTTL;

 if (!vxlan_tunable_int(sc, "legacy_port", vxlan_legacy_port)) {
  sc->vxl_src_addr.in4.sin_port = htons(VXLAN_PORT);
  sc->vxl_dst_addr.in4.sin_port = htons(VXLAN_PORT);
 } else {
  sc->vxl_src_addr.in4.sin_port = htons(VXLAN_LEGACY_PORT);
  sc->vxl_dst_addr.in4.sin_port = htons(VXLAN_LEGACY_PORT);
 }

 sc->vxl_min_port = V_ipport_firstauto;
 sc->vxl_max_port = V_ipport_lastauto;

 sc->vxl_ftable_max = VXLAN_FTABLE_MAX;
 sc->vxl_ftable_timeout = VXLAN_FTABLE_TIMEOUT;
}
