
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int mac_addr; } ;
struct TYPE_5__ {TYPE_1__ macaddr; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
oce_get_mac_addr(POCE_SOFTC sc, uint8_t *macaddr)
{
  memcpy(macaddr, sc->macaddr.mac_addr, 6);
}
