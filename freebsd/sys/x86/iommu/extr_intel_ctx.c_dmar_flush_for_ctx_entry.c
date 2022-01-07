
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_cap; int hw_ecap; scalar_t__ qi_enabled; } ;


 int DMAR_CAP_CM ;
 int DMAR_ECAP_DI ;
 int dmar_inv_ctx_glob (struct dmar_unit*) ;
 int dmar_inv_iotlb_glob (struct dmar_unit*) ;
 int dmar_qi_invalidate_ctx_glob_locked (struct dmar_unit*) ;
 int dmar_qi_invalidate_iotlb_glob_locked (struct dmar_unit*) ;

__attribute__((used)) static int
dmar_flush_for_ctx_entry(struct dmar_unit *dmar, bool force)
{
 int error;






 if ((dmar->hw_cap & DMAR_CAP_CM) == 0 && !force)
  return (0);
 if (dmar->qi_enabled) {
  dmar_qi_invalidate_ctx_glob_locked(dmar);
  if ((dmar->hw_ecap & DMAR_ECAP_DI) != 0 || force)
   dmar_qi_invalidate_iotlb_glob_locked(dmar);
  return (0);
 }
 error = dmar_inv_ctx_glob(dmar);
 if (error == 0 && ((dmar->hw_ecap & DMAR_ECAP_DI) != 0 || force))
  error = dmar_inv_iotlb_glob(dmar);
 return (error);
}
