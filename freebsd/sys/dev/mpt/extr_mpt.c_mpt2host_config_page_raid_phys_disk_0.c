
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int SmartCount; int ErrorCount; int Reserved; } ;
struct TYPE_3__ {int Reserved; } ;
typedef int CONFIG_PAGE_RAID_PHYS_DISK_0 ;


 TYPE_2__ ErrorData ;
 int MPT_2_HOST16 (int *,int ) ;
 int MPT_2_HOST32 (int *,int ) ;
 int MaxLBA ;
 TYPE_1__ PhysDiskStatus ;
 int Reserved1 ;

void
mpt2host_config_page_raid_phys_disk_0(CONFIG_PAGE_RAID_PHYS_DISK_0 *rpd0)
{

 MPT_2_HOST32(rpd0, Reserved1);
 MPT_2_HOST16(rpd0, PhysDiskStatus.Reserved);
 MPT_2_HOST32(rpd0, MaxLBA);
 MPT_2_HOST16(rpd0, ErrorData.Reserved);
 MPT_2_HOST16(rpd0, ErrorData.ErrorCount);
 MPT_2_HOST16(rpd0, ErrorData.SmartCount);
}
