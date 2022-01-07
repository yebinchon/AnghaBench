
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int dev ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int ,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int sysctl_via8233_dxs_src ;
 int sysctl_via8233_spdif_enable ;
 int sysctl_via_polling ;

__attribute__((used)) static void
via_init_sysctls(device_t dev)
{




 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "spdif_enabled", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
     sysctl_via8233_spdif_enable, "I",
     "Enable S/PDIF output on primary playback channel");
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "dxs_src", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
     sysctl_via8233_dxs_src, "I",
     "Enable VIA DXS Sample Rate Converter");
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "polling", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
     sysctl_via_polling, "I",
     "Enable polling mode");
}
