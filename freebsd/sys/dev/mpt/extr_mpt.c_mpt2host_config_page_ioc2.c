
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Reserved3; } ;
typedef int CONFIG_PAGE_IOC_2 ;


 int CapabilitiesFlags ;
 int MPI_IOC_PAGE_2_RAID_VOLUME_MAX ;
 int MPT_2_HOST16 (int *,int ) ;
 int MPT_2_HOST32 (int *,int ) ;
 TYPE_1__* RaidVolume ;

void
mpt2host_config_page_ioc2(CONFIG_PAGE_IOC_2 *ioc2)
{
 int i;

 MPT_2_HOST32(ioc2, CapabilitiesFlags);
 for (i = 0; i < MPI_IOC_PAGE_2_RAID_VOLUME_MAX; i++) {
  MPT_2_HOST16(ioc2, RaidVolume[i].Reserved3);
 }
}
