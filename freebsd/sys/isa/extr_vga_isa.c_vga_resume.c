
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pal_buf; int adp; int * state_buf; } ;
typedef TYPE_1__ vga_softc_t ;
typedef int device_t ;


 int M_TEMP ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 scalar_t__ vidd_load_palette (int ,int *) ;
 scalar_t__ vidd_load_state (int ,int *) ;

__attribute__((used)) static void
vga_resume(device_t dev)
{
 vga_softc_t *sc;

 sc = device_get_softc(dev);

 if (sc->state_buf != ((void*)0)) {
  if (vidd_load_state(sc->adp, sc->state_buf) != 0)
   device_printf(dev, "failed to reload state\n");
  free(sc->state_buf, M_TEMP);
  sc->state_buf = ((void*)0);
 }
 if (sc->pal_buf != ((void*)0)) {
  if (vidd_load_palette(sc->adp, sc->pal_buf) != 0)
   device_printf(dev, "failed to reload palette\n");
  free(sc->pal_buf, M_TEMP);
  sc->pal_buf = ((void*)0);
 }
}
