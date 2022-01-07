
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef struct fman_softc* t_Handle ;
struct TYPE_2__ {int dev; } ;
struct fman_softc {TYPE_1__ sc_base; } ;
typedef int e_FmPortType ;


 int device_printf (int ,char*) ;

__attribute__((used)) static void
fman_error_callback(t_Handle app_handle, e_FmPortType port_type,
    uint8_t port_id, uint64_t addr, uint8_t tnum, uint16_t liodn)
{
 struct fman_softc *sc;

 sc = app_handle;
 device_printf(sc->sc_base.dev, "FMan error occurred.\n");
}
