
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bwi_mac {int dummy; } ;


 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_HFLAGS_LO ;
 int BWI_COMM_MOBJ_HFLAGS_MI ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int ,int) ;

void
bwi_hostflags_write(struct bwi_mac *mac, uint64_t flags)
{
 uint64_t val;

 val = flags & 0xffff;
 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_HFLAGS_LO, val);

 val = (flags >> 16) & 0xffff;
 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_HFLAGS_MI, val);


}
