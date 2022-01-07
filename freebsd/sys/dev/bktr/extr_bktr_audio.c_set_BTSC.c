
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bktr_ptr_t ;


 int CON3ADDR ;
 int TDA9850_WADDR ;
 int i2cWrite (int ,int ,int ,int) ;

int
set_BTSC( bktr_ptr_t bktr, int control )
{
 return( i2cWrite( bktr, TDA9850_WADDR, CON3ADDR, control ) );
}
