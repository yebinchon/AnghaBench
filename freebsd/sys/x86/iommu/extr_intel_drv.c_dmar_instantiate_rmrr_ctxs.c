
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inst_rmrr_iter_args {struct dmar_unit* dmar; } ;
struct dmar_unit {int hw_gcmd; int unit; int domains; } ;


 int DMAR_BARRIER_RMRR ;
 int DMAR_GCMD_TE ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 scalar_t__ bootverbose ;
 int dmar_barrier_enter (struct dmar_unit*,int ) ;
 int dmar_barrier_exit (struct dmar_unit*,int ) ;
 int dmar_enable_translation (struct dmar_unit*) ;
 int dmar_inst_rmrr_iter ;
 int dmar_iterate_tbl (int ,struct inst_rmrr_iter_args*) ;
 int printf (char*,int,...) ;

int
dmar_instantiate_rmrr_ctxs(struct dmar_unit *dmar)
{
 struct inst_rmrr_iter_args iria;
 int error;

 if (!dmar_barrier_enter(dmar, DMAR_BARRIER_RMRR))
  return (0);

 error = 0;
 iria.dmar = dmar;
 dmar_iterate_tbl(dmar_inst_rmrr_iter, &iria);
 DMAR_LOCK(dmar);
 if (!LIST_EMPTY(&dmar->domains)) {
  KASSERT((dmar->hw_gcmd & DMAR_GCMD_TE) == 0,
     ("dmar%d: RMRR not handled but translation is already enabled",
      dmar->unit));
  error = dmar_enable_translation(dmar);
  if (bootverbose) {
   if (error == 0) {
    printf("dmar%d: enabled translation\n",
        dmar->unit);
   } else {
    printf("dmar%d: enabling translation failed, "
        "error %d\n", dmar->unit, error);
   }
  }
 }
 dmar_barrier_exit(dmar, DMAR_BARRIER_RMRR);
 return (error);
}
