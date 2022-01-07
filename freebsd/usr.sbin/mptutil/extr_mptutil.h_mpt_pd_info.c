
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U16 ;
typedef int CONFIG_PAGE_RAID_PHYS_DISK_0 ;


 int MPI_CONFIG_PAGETYPE_RAID_PHYSDISK ;
 int * mpt_read_config_page (int,int ,int ,int ,int *) ;

__attribute__((used)) static __inline CONFIG_PAGE_RAID_PHYS_DISK_0 *
mpt_pd_info(int fd, U8 PhysDiskNum, U16 *IOCStatus)
{

 return (mpt_read_config_page(fd, MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, 0,
     PhysDiskNum, IOCStatus));
}
