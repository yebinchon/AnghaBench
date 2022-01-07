
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bwi_mac {int dummy; } ;


 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_HFLAGS_LO ;
 int BWI_COMM_MOBJ_HFLAGS_MI ;
 int MOBJ_READ_2 (struct bwi_mac*,int ,int ) ;

uint64_t
bwi_hostflags_read(struct bwi_mac *mac)
{
 uint64_t flags, val;


 flags = 0;

 val = MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_HFLAGS_MI);
 flags |= val << 16;

 val = MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_HFLAGS_LO);
 flags |= val;

 return flags;
}
