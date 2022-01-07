
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;



__attribute__((used)) static __inline U32
mpt_vol_pageaddr(U8 VolumeBus, U8 VolumeID)
{

 return (VolumeBus << 8 | VolumeID);
}
