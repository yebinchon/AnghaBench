
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HRDBG (char*) ;
 int fini_device_tbl () ;
 int fini_disk_storage_tbl () ;
 int fini_fs_tbl () ;
 int fini_network_tbl () ;
 int fini_partition_tbl () ;
 int fini_printer_tbl () ;
 int fini_processor_tbl () ;
 int fini_scalars () ;
 int fini_storage_tbl () ;
 int fini_swins_tbl () ;
 int fini_swrun_tbl () ;
 scalar_t__ host_registration_id ;
 int * hr_kd ;
 int kvm_close (int *) ;
 int or_unregister (scalar_t__) ;

__attribute__((used)) static int
hostres_fini(void)
{

 if (hr_kd != ((void*)0))
  (void)kvm_close(hr_kd);

 fini_storage_tbl();
 fini_fs_tbl();
 fini_processor_tbl();
 fini_disk_storage_tbl();
 fini_device_tbl();
 fini_partition_tbl();
 fini_network_tbl();
 fini_printer_tbl();

 fini_swrun_tbl();
 fini_swins_tbl();

 fini_scalars();

 if (host_registration_id > 0)
  or_unregister(host_registration_id);

 HRDBG("done.");
 return (0);
}
