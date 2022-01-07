
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pal_buf; int adp; int * state_buf; } ;
typedef TYPE_1__ vga_softc_t ;
typedef int device_t ;


 int M_NOWAIT ;
 int M_TEMP ;
 scalar_t__ bootverbose ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int free (int *,int ) ;
 void* malloc (int,int ,int ) ;
 scalar_t__ vidd_save_palette (int ,int *) ;
 int vidd_save_state (int ,int *,int) ;

__attribute__((used)) static void
vga_suspend(device_t dev)
{
 vga_softc_t *sc;
 int nbytes;

 sc = device_get_softc(dev);


 if (sc->state_buf != ((void*)0))
  goto save_palette;
 nbytes = vidd_save_state(sc->adp, ((void*)0), 0);
 if (nbytes <= 0)
  goto save_palette;
 sc->state_buf = malloc(nbytes, M_TEMP, M_NOWAIT);
 if (sc->state_buf == ((void*)0))
  goto save_palette;
 if (bootverbose)
  device_printf(dev, "saving %d bytes of video state\n", nbytes);
 if (vidd_save_state(sc->adp, sc->state_buf, nbytes) != 0) {
  device_printf(dev, "failed to save state (nbytes=%d)\n",
      nbytes);
  free(sc->state_buf, M_TEMP);
  sc->state_buf = ((void*)0);
 }

save_palette:

 if (sc->pal_buf != ((void*)0))
  return;
 sc->pal_buf = malloc(256 * 3, M_TEMP, M_NOWAIT);
 if (sc->pal_buf == ((void*)0))
  return;
 if (bootverbose)
  device_printf(dev, "saving color palette\n");
 if (vidd_save_palette(sc->adp, sc->pal_buf) != 0) {
  device_printf(dev, "failed to save palette\n");
  free(sc->pal_buf, M_TEMP);
  sc->pal_buf = ((void*)0);
 }
}
