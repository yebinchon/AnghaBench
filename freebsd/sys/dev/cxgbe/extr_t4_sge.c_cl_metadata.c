
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_zone_info {scalar_t__ size; } ;
struct sge_fl {int dummy; } ;
struct cluster_metadata {int dummy; } ;
struct cluster_layout {size_t zidx; } ;
struct TYPE_2__ {struct sw_zone_info* sw_zone_info; } ;
struct adapter {TYPE_1__ sge; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ cl_has_metadata (struct sge_fl*,struct cluster_layout*) ;

__attribute__((used)) static inline struct cluster_metadata *
cl_metadata(struct adapter *sc, struct sge_fl *fl, struct cluster_layout *cll,
    caddr_t cl)
{

 if (cl_has_metadata(fl, cll)) {
  struct sw_zone_info *swz = &sc->sge.sw_zone_info[cll->zidx];

  return ((struct cluster_metadata *)(cl + swz->size) - 1);
 }
 return (((void*)0));
}
