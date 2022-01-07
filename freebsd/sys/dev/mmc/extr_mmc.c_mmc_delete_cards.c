
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int child_count; int * child_list; int dev; } ;
struct mmc_ivars {int rca; } ;


 int M_DEVBUF ;
 scalar_t__ bootverbose ;
 int device_delete_child (int ,int ) ;
 struct mmc_ivars* device_get_ivars (int ) ;
 int device_printf (int ,char*,int ) ;
 int free (struct mmc_ivars*,int ) ;
 scalar_t__ mmc_debug ;
 int mmc_update_child_list (struct mmc_softc*) ;

__attribute__((used)) static int
mmc_delete_cards(struct mmc_softc *sc, bool final)
{
 struct mmc_ivars *ivar;
 int err, i, j;

 err = 0;
 for (i = j = 0; i < sc->child_count; i++) {
  ivar = device_get_ivars(sc->child_list[i]);
  if (bootverbose || mmc_debug)
   device_printf(sc->dev,
       "Card at relative address %d deleted\n",
       ivar->rca);
  err = device_delete_child(sc->dev, sc->child_list[i]);
  if (err != 0) {
   j++;
   if (final == 0)
    continue;
   else
    break;
  }
  free(ivar, M_DEVBUF);
 }
 sc->child_count = j;
 mmc_update_child_list(sc);
 return (err);
}
