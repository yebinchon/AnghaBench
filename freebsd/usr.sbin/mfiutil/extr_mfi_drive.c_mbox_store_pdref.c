
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_id; int seq_num; } ;
union mfi_pd_ref {TYPE_1__ v; } ;
typedef int uint8_t ;



void
mbox_store_pdref(uint8_t *mbox, union mfi_pd_ref *ref)
{

 mbox[0] = ref->v.device_id & 0xff;
 mbox[1] = ref->v.device_id >> 8;
 mbox[2] = ref->v.seq_num & 0xff;
 mbox[3] = ref->v.seq_num >> 8;
}
