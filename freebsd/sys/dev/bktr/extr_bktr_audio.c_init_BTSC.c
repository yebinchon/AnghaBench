
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bktr_ptr_t ;


 int ALI1ADDR ;
 int ALI2ADDR ;
 int ALI3ADDR ;
 int CON1ADDR ;
 int CON2ADDR ;
 int CON3ADDR ;
 int CON4ADDR ;
 int TDA9850_WADDR ;
 int i2cWrite (int ,int ,int ,int) ;

void
init_BTSC( bktr_ptr_t bktr )
{
    i2cWrite(bktr, TDA9850_WADDR, CON1ADDR, 0x08);
    i2cWrite(bktr, TDA9850_WADDR, CON2ADDR, 0x08);
    i2cWrite(bktr, TDA9850_WADDR, CON3ADDR, 0x40);
    i2cWrite(bktr, TDA9850_WADDR, CON4ADDR, 0x07);
    i2cWrite(bktr, TDA9850_WADDR, ALI1ADDR, 0x10);
    i2cWrite(bktr, TDA9850_WADDR, ALI2ADDR, 0x10);
    i2cWrite(bktr, TDA9850_WADDR, ALI3ADDR, 0x03);
}
