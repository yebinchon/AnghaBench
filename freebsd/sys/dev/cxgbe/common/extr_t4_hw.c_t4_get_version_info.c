
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vpd_vers; int scfg_vers; int er_vers; int tp_vers; int bs_vers; int fw_vers; } ;
struct adapter {TYPE_1__ params; } ;


 int FIRST_RET (int ) ;
 int t4_get_bs_version (struct adapter*,int *) ;
 int t4_get_exprom_version (struct adapter*,int *) ;
 int t4_get_fw_version (struct adapter*,int *) ;
 int t4_get_scfg_version (struct adapter*,int *) ;
 int t4_get_tp_version (struct adapter*,int *) ;
 int t4_get_vpd_version (struct adapter*,int *) ;

int t4_get_version_info(struct adapter *adapter)
{
 int ret = 0;
 do { int __ret = t4_get_fw_version(adapter, &adapter->params.fw_vers); if (__ret && !ret) ret = __ret; } while (0);
 do { int __ret = t4_get_bs_version(adapter, &adapter->params.bs_vers); if (__ret && !ret) ret = __ret; } while (0);
 do { int __ret = t4_get_tp_version(adapter, &adapter->params.tp_vers); if (__ret && !ret) ret = __ret; } while (0);
 do { int __ret = t4_get_exprom_version(adapter, &adapter->params.er_vers); if (__ret && !ret) ret = __ret; } while (0);
 do { int __ret = t4_get_scfg_version(adapter, &adapter->params.scfg_vers); if (__ret && !ret) ret = __ret; } while (0);
 do { int __ret = t4_get_vpd_version(adapter, &adapter->params.vpd_vers); if (__ret && !ret) ret = __ret; } while (0);



 return ret;
}
