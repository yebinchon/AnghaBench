
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct oce_softc {int port_id; } ;


 int OCE_NO_LOOPBACK ;
 int oce_mbox_cmd_set_loopback (struct oce_softc*,int ,int ,int) ;
 int oce_mbox_cmd_test_loopback (struct oce_softc*,int ,int ,int,int,int) ;

__attribute__((used)) static uint32_t
oce_loopback_test(struct oce_softc *sc, uint8_t loopback_type)
{
 uint32_t status = 0;

 oce_mbox_cmd_set_loopback(sc, sc->port_id, loopback_type, 1);
 status = oce_mbox_cmd_test_loopback(sc, sc->port_id, loopback_type,
    1500, 2, 0xabc);
 oce_mbox_cmd_set_loopback(sc, sc->port_id, OCE_NO_LOOPBACK, 1);

 return status;
}
