
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_SCSI_DEVICE_1 ;


 int Configuration ;
 int HOST_2_MPT32 (int *,int ) ;
 int RequestedParameters ;
 int Reserved ;

void
host2mpt_config_page_scsi_device_1(CONFIG_PAGE_SCSI_DEVICE_1 *sd1)
{

 HOST_2_MPT32(sd1, RequestedParameters);
 HOST_2_MPT32(sd1, Reserved);
 HOST_2_MPT32(sd1, Configuration);
}
