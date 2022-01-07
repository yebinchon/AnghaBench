
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_id; int reserved; int seq; } ;
union mfi_ld_ref {TYPE_1__ v; } ;
typedef int uint8_t ;



void
mbox_store_ldref(uint8_t *mbox, union mfi_ld_ref *ref)
{

 mbox[0] = ref->v.target_id;
 mbox[1] = ref->v.reserved;
 mbox[2] = ref->v.seq & 0xff;
 mbox[3] = ref->v.seq >> 8;
}
