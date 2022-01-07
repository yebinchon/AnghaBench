
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base_vfmprc; scalar_t__ vfmprc; int saved_reset_vfmprc; scalar_t__ base_vfgotc; scalar_t__ vfgotc; int saved_reset_vfgotc; scalar_t__ base_vfgorc; scalar_t__ vfgorc; int saved_reset_vfgorc; scalar_t__ base_vfgptc; scalar_t__ vfgptc; int saved_reset_vfgptc; scalar_t__ base_vfgprc; scalar_t__ vfgprc; int saved_reset_vfgprc; } ;
struct TYPE_4__ {TYPE_1__ vf; } ;
struct adapter {TYPE_2__ stats; } ;



__attribute__((used)) static void
ixv_save_stats(struct adapter *adapter)
{
 if (adapter->stats.vf.vfgprc || adapter->stats.vf.vfgptc) {
  adapter->stats.vf.saved_reset_vfgprc +=
      adapter->stats.vf.vfgprc - adapter->stats.vf.base_vfgprc;
  adapter->stats.vf.saved_reset_vfgptc +=
      adapter->stats.vf.vfgptc - adapter->stats.vf.base_vfgptc;
  adapter->stats.vf.saved_reset_vfgorc +=
      adapter->stats.vf.vfgorc - adapter->stats.vf.base_vfgorc;
  adapter->stats.vf.saved_reset_vfgotc +=
      adapter->stats.vf.vfgotc - adapter->stats.vf.base_vfgotc;
  adapter->stats.vf.saved_reset_vfmprc +=
      adapter->stats.vf.vfmprc - adapter->stats.vf.base_vfmprc;
 }
}
