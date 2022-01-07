
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_SCSI_PORT_1 ;


 int Configuration ;
 int IDConfig ;
 int MPT_2_HOST16 (int *,int ) ;
 int MPT_2_HOST32 (int *,int ) ;
 int OnBusTimerValue ;

void
mpt2host_config_page_scsi_port_1(CONFIG_PAGE_SCSI_PORT_1 *sp1)
{

 MPT_2_HOST32(sp1, Configuration);
 MPT_2_HOST32(sp1, OnBusTimerValue);
 MPT_2_HOST16(sp1, IDConfig);
}
