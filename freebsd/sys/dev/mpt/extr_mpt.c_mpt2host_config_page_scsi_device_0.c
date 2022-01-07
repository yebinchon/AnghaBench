
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_SCSI_DEVICE_0 ;


 int Information ;
 int MPT_2_HOST32 (int *,int ) ;
 int NegotiatedParameters ;

void
mpt2host_config_page_scsi_device_0(CONFIG_PAGE_SCSI_DEVICE_0 *sd0)
{

 MPT_2_HOST32(sd0, NegotiatedParameters);
 MPT_2_HOST32(sd0, Information);
}
