
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bktr_ptr_t ;
struct TYPE_4__ {int dpl_version_string; int dpl_addr; } ;


 int msp_dpl_read (TYPE_1__*,int ,int,int) ;
 int sprintf (int ,char*,int,int,int,int) ;

void dpl_read_id( bktr_ptr_t bktr ){
    int rev1=0, rev2=0;
    rev1 = msp_dpl_read(bktr, bktr->dpl_addr, 0x12, 0x001e);
    rev2 = msp_dpl_read(bktr, bktr->dpl_addr, 0x12, 0x001f);

    sprintf(bktr->dpl_version_string, "34%02d%c-%c%d",
      ((rev2>>8)&0xff)-1, (rev1&0xff)+'@', ((rev1>>8)&0xff)+'@', rev2&0x1f);
}
