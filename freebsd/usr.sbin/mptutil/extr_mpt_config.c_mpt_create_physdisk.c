
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mpt_standalone_disk {int target; int bus; } ;
typedef int U8 ;
typedef int U32 ;
struct TYPE_9__ {scalar_t__ PageVersion; } ;
struct TYPE_7__ {int PageLength; scalar_t__ PageNumber; int PageType; } ;
struct TYPE_8__ {int PhysDiskID; int PhysDiskBus; scalar_t__ PhysDiskIOC; TYPE_1__ Header; } ;
typedef TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;
typedef TYPE_3__ CONFIG_PAGE_HEADER ;
typedef int ActionData ;


 int EOPNOTSUPP ;
 int MPI_CONFIG_PAGETYPE_RAID_PHYSDISK ;
 scalar_t__ MPI_RAIDPHYSDISKPAGE0_PAGEVERSION ;
 int MPI_RAID_ACTION_CREATE_PHYSDISK ;
 TYPE_2__* calloc (int,int) ;
 int mpt_raid_action (int,int ,int ,int ,int ,int ,TYPE_2__*,int,int *,int*,int,int *,int *,int) ;
 int mpt_read_config_page_header (int,int ,int ,int ,TYPE_3__*,int *) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static int
mpt_create_physdisk(int fd, struct mpt_standalone_disk *disk, U8 *PhysDiskNum)
{
 CONFIG_PAGE_HEADER header;
 CONFIG_PAGE_RAID_PHYS_DISK_0 *config_page;
 int error;
 U32 ActionData;

 error = mpt_read_config_page_header(fd, MPI_CONFIG_PAGETYPE_RAID_PHYSDISK,
     0, 0, &header, ((void*)0));
 if (error)
  return (error);
 if (header.PageVersion > MPI_RAIDPHYSDISKPAGE0_PAGEVERSION) {
  warnx("Unsupported RAID physdisk page 0 version %d",
      header.PageVersion);
  return (EOPNOTSUPP);
 }
 config_page = calloc(1, sizeof(CONFIG_PAGE_RAID_PHYS_DISK_0));
 config_page->Header.PageType = MPI_CONFIG_PAGETYPE_RAID_PHYSDISK;
 config_page->Header.PageNumber = 0;
 config_page->Header.PageLength = sizeof(CONFIG_PAGE_RAID_PHYS_DISK_0) /
     4;
 config_page->PhysDiskIOC = 0;
 config_page->PhysDiskBus = disk->bus;
 config_page->PhysDiskID = disk->target;


 error = mpt_raid_action(fd, MPI_RAID_ACTION_CREATE_PHYSDISK, 0, 0, 0, 0,
     config_page, sizeof(CONFIG_PAGE_RAID_PHYS_DISK_0), ((void*)0),
     &ActionData, sizeof(ActionData), ((void*)0), ((void*)0), 1);
 if (error)
  return (error);
 *PhysDiskNum = ActionData & 0xff;
 return (0);
}
