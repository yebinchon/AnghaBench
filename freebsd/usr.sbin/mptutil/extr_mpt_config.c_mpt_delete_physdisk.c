
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int MPI_RAID_ACTION_DELETE_PHYSDISK ;
 int mpt_raid_action (int,int ,int ,int ,int ,int ,int *,int ,int *,int *,int ,int *,int *,int ) ;

__attribute__((used)) static int
mpt_delete_physdisk(int fd, U8 PhysDiskNum)
{

 return (mpt_raid_action(fd, MPI_RAID_ACTION_DELETE_PHYSDISK, 0, 0,
     PhysDiskNum, 0, ((void*)0), 0, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), 0));
}
