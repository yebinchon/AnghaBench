
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {scalar_t__ app_mode; int status; } ;


 int LIO_DEV_RUNNING ;
 scalar_t__ LIO_DRV_NIC_APP ;
 int atomic_store_rel_int (int *,int ) ;
 int lio_dev_err (struct octeon_device*,char*,...) ;
 scalar_t__ lio_init_nic_module (struct octeon_device*) ;
 scalar_t__ octeon_enable_sriov (struct octeon_device*) ;

__attribute__((used)) static int
lio_nic_starter(struct octeon_device *oct)
{
 int ret = 0;

 atomic_store_rel_int(&oct->status, LIO_DEV_RUNNING);

 if (oct->app_mode && oct->app_mode == LIO_DRV_NIC_APP) {
  if (lio_init_nic_module(oct)) {
   lio_dev_err(oct, "NIC initialization failed\n");
   ret = -1;





  }
 } else {
  lio_dev_err(oct,
       "Unexpected application running on NIC (%d). Check firmware.\n",
       oct->app_mode);
  ret = -1;
 }

 return (ret);
}
