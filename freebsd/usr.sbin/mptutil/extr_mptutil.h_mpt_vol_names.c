
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U16 ;
typedef int CONFIG_PAGE_RAID_VOL_1 ;


 int MPI_CONFIG_PAGETYPE_RAID_VOLUME ;
 int * mpt_read_config_page (int,int ,int,int ,int *) ;
 int mpt_vol_pageaddr (int ,int ) ;

__attribute__((used)) static __inline CONFIG_PAGE_RAID_VOL_1 *
mpt_vol_names(int fd, U8 VolumeBus, U8 VolumeID, U16 *IOCStatus)
{

 return (mpt_read_config_page(fd, MPI_CONFIG_PAGETYPE_RAID_VOLUME, 1,
     mpt_vol_pageaddr(VolumeBus, VolumeID), IOCStatus));
}
