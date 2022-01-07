
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_SCSI_DEVICE_1 ;


 int Configuration ;
 int MPT_2_HOST32 (int *,int ) ;
 int RequestedParameters ;
 int Reserved ;

void
mpt2host_config_page_scsi_device_1(CONFIG_PAGE_SCSI_DEVICE_1 *sd1)
{

 MPT_2_HOST32(sd1, RequestedParameters);
 MPT_2_HOST32(sd1, Reserved);
 MPT_2_HOST32(sd1, Configuration);
}
