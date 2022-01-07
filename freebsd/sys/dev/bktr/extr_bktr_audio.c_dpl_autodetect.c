
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bktr_ptr_t ;
struct TYPE_4__ {int dpl_addr; } ;


 int msp_dpl_write (TYPE_1__*,int ,int,int,int) ;

void dpl_autodetect( bktr_ptr_t bktr ) {


    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x000c,0x0320);


    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x0040,0x0060);



    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x0041,0x0620);
    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x0042,0x1F00);
    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x0043,0x0000);
    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x0044,0x4000);

    msp_dpl_write(bktr, bktr->dpl_addr, 0x12, 0x0045,0x5400);


}
