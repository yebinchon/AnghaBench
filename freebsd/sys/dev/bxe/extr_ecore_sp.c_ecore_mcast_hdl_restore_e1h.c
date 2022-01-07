
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ecore_mcast_ramrod_params {int dummy; } ;
struct ecore_mcast_obj {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_57711_SET_MC_FILTER (int *,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,int) ;
 int ecore_mcast_get_next_bin (struct ecore_mcast_obj*,int) ;

__attribute__((used)) static inline void ecore_mcast_hdl_restore_e1h(struct bxe_softc *sc,
 struct ecore_mcast_obj *o, struct ecore_mcast_ramrod_params *p,
 uint32_t *mc_filter)
{
 int bit;

 for (bit = ecore_mcast_get_next_bin(o, 0);
      bit >= 0;
      bit = ecore_mcast_get_next_bin(o, bit + 1)) {
  ECORE_57711_SET_MC_FILTER(mc_filter, bit);
  ECORE_MSG(sc, "About to set bin %d\n", bit);
 }
}
