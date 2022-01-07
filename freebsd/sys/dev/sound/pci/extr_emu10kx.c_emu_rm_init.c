
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int num_gprs; int dev; struct emu_rm* rm; } ;
struct emu_rm {int num_gprs; int* allocmap; int last_free_gpr; int gpr_lock; scalar_t__ num_used; struct emu_sc_info* card; } ;


 int EMU_MAX_GPR ;
 int ENOMEM ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int device_get_nameunit (int ) ;
 struct emu_rm* malloc (int,int ,int) ;
 int mtx_init (int *,int ,char*,int ) ;

int
emu_rm_init(struct emu_sc_info *sc)
{
 int i;
 int maxcount;
 struct emu_rm *rm;

 rm = malloc(sizeof(struct emu_rm), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (rm == ((void*)0)) {
  return (ENOMEM);
 }
 sc->rm = rm;
 rm->card = sc;
 maxcount = sc->num_gprs;
 rm->num_used = 0;
 mtx_init(&(rm->gpr_lock), device_get_nameunit(sc->dev), "gpr alloc", MTX_DEF);
 rm->num_gprs = (maxcount < EMU_MAX_GPR ? maxcount : EMU_MAX_GPR);
 for (i = 0; i < rm->num_gprs; i++)
  rm->allocmap[i] = 0;

 rm->allocmap[0] = 1;
 rm->last_free_gpr = 1;

 return (0);
}
