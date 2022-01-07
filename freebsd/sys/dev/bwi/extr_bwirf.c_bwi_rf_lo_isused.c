
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rf_lo {int dummy; } ;
struct bwi_rf {int rf_lo_used; struct bwi_rf_lo const* rf_lo; } ;
struct bwi_mac {struct bwi_rf mac_rf; } ;


 int BWI_RFLO_MAX ;
 int KASSERT (int,char*) ;
 int isset (int ,int) ;

__attribute__((used)) static __inline int
bwi_rf_lo_isused(struct bwi_mac *mac, const struct bwi_rf_lo *lo)
{
 struct bwi_rf *rf = &mac->mac_rf;
 int idx;

 idx = lo - rf->rf_lo;
 KASSERT(idx >= 0 && idx < BWI_RFLO_MAX, ("idx %d", idx));

 return isset(rf->rf_lo_used, idx);
}
