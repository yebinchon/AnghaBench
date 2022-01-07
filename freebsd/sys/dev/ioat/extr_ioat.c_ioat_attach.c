
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {size_t domain; scalar_t__ cpu; scalar_t__ version; int chan_idx; int device; } ;
typedef int device_t ;


 scalar_t__ CPU_FFS (int *) ;
 scalar_t__ CPU_FIRST () ;
 struct ioat_softc* DEVICE2SOFTC (int ) ;
 int ENODEV ;
 int ENXIO ;
 int FALSE ;
 int IOAT_MAX_CHANNELS ;
 scalar_t__ IOAT_VER_3_0 ;
 scalar_t__ bus_get_domain (int ,size_t*) ;
 int * cpuset_domain ;
 int device_printf (int ,char*) ;
 int ioat3_attach (int ) ;
 struct ioat_softc** ioat_channel ;
 int ioat_channel_index ;
 int ioat_detach (int ) ;
 int ioat_list_mtx ;
 int ioat_map_pci_bar (struct ioat_softc*) ;
 int ioat_process_events (struct ioat_softc*,int ) ;
 scalar_t__ ioat_read_cbver (struct ioat_softc*) ;
 int ioat_reset_hw (struct ioat_softc*) ;
 int ioat_setup_intr (struct ioat_softc*) ;
 int ioat_setup_sysctl (int ) ;
 int ioat_test_attach () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
ioat_attach(device_t device)
{
 struct ioat_softc *ioat;
 int error, i;

 ioat = DEVICE2SOFTC(device);
 ioat->device = device;
 if (bus_get_domain(device, &ioat->domain) != 0)
  ioat->domain = 0;
 ioat->cpu = CPU_FFS(&cpuset_domain[ioat->domain]) - 1;
 if (ioat->cpu < 0)
  ioat->cpu = CPU_FIRST();

 error = ioat_map_pci_bar(ioat);
 if (error != 0)
  goto err;

 ioat->version = ioat_read_cbver(ioat);
 if (ioat->version < IOAT_VER_3_0) {
  error = ENODEV;
  goto err;
 }

 error = ioat3_attach(device);
 if (error != 0)
  goto err;

 error = pci_enable_busmaster(device);
 if (error != 0)
  goto err;

 error = ioat_setup_intr(ioat);
 if (error != 0)
  goto err;

 error = ioat_reset_hw(ioat);
 if (error != 0)
  goto err;

 ioat_process_events(ioat, FALSE);
 ioat_setup_sysctl(device);

 mtx_lock(&ioat_list_mtx);
 for (i = 0; i < IOAT_MAX_CHANNELS; i++) {
  if (ioat_channel[i] == ((void*)0))
   break;
 }
 if (i >= IOAT_MAX_CHANNELS) {
  mtx_unlock(&ioat_list_mtx);
  device_printf(device, "Too many I/OAT devices in system\n");
  error = ENXIO;
  goto err;
 }
 ioat->chan_idx = i;
 ioat_channel[i] = ioat;
 if (i >= ioat_channel_index)
  ioat_channel_index = i + 1;
 mtx_unlock(&ioat_list_mtx);

 ioat_test_attach();

err:
 if (error != 0)
  ioat_detach(device);
 return (error);
}
