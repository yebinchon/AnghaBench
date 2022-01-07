
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocs_softc {int ramlog; int hw_war_version; scalar_t__ config_tgt; scalar_t__ enable_tgt; } ;
typedef int device_t ;


 int EBUSY ;
 int M_OCS ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (int ,int ) ;
 int ocs_debug_detach (struct ocs_softc*) ;
 int ocs_device_detach (struct ocs_softc*) ;
 int ocs_device_lock_free (struct ocs_softc*) ;
 int ocs_ramlog_free (struct ocs_softc*,int ) ;
 int ocs_release_bus (struct ocs_softc*) ;
 int ocs_scsi_tgt_del_device (struct ocs_softc*) ;

__attribute__((used)) static int
ocs_pci_detach(device_t dev)
{
 struct ocs_softc *ocs;

 ocs = (struct ocs_softc *)device_get_softc(dev);
 if (!ocs) {
  device_printf(dev, "no driver context?!?\n");
  return -1;
 }

 if (ocs->config_tgt && ocs->enable_tgt) {
  device_printf(dev, "can't detach with target mode enabled\n");
  return EBUSY;
 }

 ocs_device_detach(ocs);
 if (ocs->config_tgt)
  ocs_scsi_tgt_del_device(ocs);


 free(ocs->hw_war_version, M_OCS);

 ocs_device_lock_free(ocs);

 ocs_debug_detach(ocs);

 ocs_ramlog_free(ocs, ocs->ramlog);

 ocs_release_bus(ocs);

 return 0;
}
