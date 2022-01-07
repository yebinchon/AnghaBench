
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct fman_softc* t_Handle ;
struct TYPE_2__ {int dev; } ;
struct fman_softc {TYPE_1__ sc_base; } ;
typedef int e_FmExceptions ;


 int device_printf (int ,char*) ;

__attribute__((used)) static void
fman_exception_callback(t_Handle app_handle, e_FmExceptions exception)
{
 struct fman_softc *sc;

 sc = app_handle;
 device_printf(sc->sc_base.dev, "FMan exception occurred.\n");
}
