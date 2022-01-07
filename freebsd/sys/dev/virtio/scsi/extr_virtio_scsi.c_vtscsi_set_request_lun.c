
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ccb_hdr {int target_id; int target_lun; } ;



__attribute__((used)) static void
vtscsi_set_request_lun(struct ccb_hdr *ccbh, uint8_t lun[])
{

 lun[0] = 1;
 lun[1] = ccbh->target_id;
 lun[2] = 0x40 | ((ccbh->target_lun >> 8) & 0x3F);
 lun[3] = ccbh->target_lun & 0xFF;
}
