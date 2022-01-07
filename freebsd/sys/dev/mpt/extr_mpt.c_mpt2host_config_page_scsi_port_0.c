
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_SCSI_PORT_0 ;


 int Capabilities ;
 int MPT_2_HOST32 (int *,int ) ;
 int PhysicalInterface ;

void
mpt2host_config_page_scsi_port_0(CONFIG_PAGE_SCSI_PORT_0 *sp0)
{

 MPT_2_HOST32(sp0, Capabilities);
 MPT_2_HOST32(sp0, PhysicalInterface);
}
