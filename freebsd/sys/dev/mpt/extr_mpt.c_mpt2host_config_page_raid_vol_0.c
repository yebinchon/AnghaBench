
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int Reserved; } ;
struct TYPE_5__ {int Settings; } ;
struct TYPE_4__ {int Reserved; } ;
typedef int CONFIG_PAGE_RAID_VOL_0 ;


 int MPI_RAID_VOL_PAGE_0_PHYSDISK_MAX ;
 int MPT_2_HOST16 (int *,int ) ;
 int MPT_2_HOST32 (int *,int ) ;
 int MaxLBA ;
 int MaxLBAHigh ;
 TYPE_3__* PhysDisk ;
 int Reserved2 ;
 int Reserved3 ;
 int StripeSize ;
 TYPE_2__ VolumeSettings ;
 TYPE_1__ VolumeStatus ;

void
mpt2host_config_page_raid_vol_0(CONFIG_PAGE_RAID_VOL_0 *volp)
{
 int i;

 MPT_2_HOST16(volp, VolumeStatus.Reserved);
 MPT_2_HOST16(volp, VolumeSettings.Settings);
 MPT_2_HOST32(volp, MaxLBA);
 MPT_2_HOST32(volp, MaxLBAHigh);
 MPT_2_HOST32(volp, StripeSize);
 MPT_2_HOST32(volp, Reserved2);
 MPT_2_HOST32(volp, Reserved3);
 for (i = 0; i < MPI_RAID_VOL_PAGE_0_PHYSDISK_MAX; i++) {
  MPT_2_HOST16(volp, PhysDisk[i].Reserved);
 }
}
