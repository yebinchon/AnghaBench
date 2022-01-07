
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwi_rf_lo {int dummy; } ;
struct TYPE_2__ {struct bwi_rf_lo* rf_lo; } ;
struct bwi_mac {TYPE_1__ mac_rf; } ;


 int BWI_RFLO_MAX ;
 int KASSERT (int,char*) ;

__attribute__((used)) static __inline struct bwi_rf_lo *
bwi_get_rf_lo(struct bwi_mac *mac, uint16_t rf_atten, uint16_t bbp_atten)
{
 int n;

 n = rf_atten + (14 * (bbp_atten / 2));
 KASSERT(n < BWI_RFLO_MAX, ("n %d", n));

 return &mac->mac_rf.rf_lo[n];
}
