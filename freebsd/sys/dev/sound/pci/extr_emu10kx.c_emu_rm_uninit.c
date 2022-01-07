
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emu_sc_info {int dbg_level; TYPE_1__* rm; int dev; } ;
struct TYPE_2__ {int last_free_gpr; scalar_t__* allocmap; int gpr_lock; } ;


 int M_DEVBUF ;
 int device_printf (int ,char*,int) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
emu_rm_uninit(struct emu_sc_info *sc)
{
 int i;

 if (sc->dbg_level > 1) {
  mtx_lock(&(sc->rm->gpr_lock));
  for (i = 1; i < sc->rm->last_free_gpr; i++)
   if (sc->rm->allocmap[i] > 0)
    device_printf(sc->dev, "rm: gpr %d not free before uninit\n", i);
  mtx_unlock(&(sc->rm->gpr_lock));
 }

 mtx_destroy(&(sc->rm->gpr_lock));
 free(sc->rm, M_DEVBUF);
 return (0);
}
