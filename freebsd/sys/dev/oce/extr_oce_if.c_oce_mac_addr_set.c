
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int size_of_struct; int mac_addr; } ;
struct TYPE_7__ {int dev; TYPE_1__ macaddr; int ifp; int if_id; int pmac_id; } ;
typedef TYPE_2__* POCE_SOFTC ;


 scalar_t__ IF_LLADDR (int ) ;
 int bcmp (scalar_t__,int ,int ) ;
 int bcopy (scalar_t__,int ,int ) ;
 int device_printf (int ,char*) ;
 int oce_mbox_macaddr_add (TYPE_2__*,int *,int ,int *) ;
 int oce_mbox_macaddr_del (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
oce_mac_addr_set(POCE_SOFTC sc)
{
 uint32_t old_pmac_id = sc->pmac_id;
 int status = 0;


 status = bcmp((IF_LLADDR(sc->ifp)), sc->macaddr.mac_addr,
    sc->macaddr.size_of_struct);
 if (!status)
  return;

 status = oce_mbox_macaddr_add(sc, (uint8_t *)(IF_LLADDR(sc->ifp)),
     sc->if_id, &sc->pmac_id);
 if (!status) {
  status = oce_mbox_macaddr_del(sc, sc->if_id, old_pmac_id);
  bcopy((IF_LLADDR(sc->ifp)), sc->macaddr.mac_addr,
     sc->macaddr.size_of_struct);
 }
 if (status)
  device_printf(sc->dev, "Failed update macaddress\n");

}
