
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_SCSI_PORT_1 ;


 int Configuration ;
 int HOST_2_MPT16 (int *,int ) ;
 int HOST_2_MPT32 (int *,int ) ;
 int IDConfig ;
 int OnBusTimerValue ;

void
host2mpt_config_page_scsi_port_1(CONFIG_PAGE_SCSI_PORT_1 *sp1)
{

 HOST_2_MPT32(sp1, Configuration);
 HOST_2_MPT32(sp1, OnBusTimerValue);
 HOST_2_MPT16(sp1, IDConfig);
}
