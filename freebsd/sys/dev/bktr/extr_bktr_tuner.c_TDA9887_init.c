
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int bktr_ptr_t ;


 int TDA9887_ADDR ;
 int i2cWrite (int ,int ,int,int) ;

__attribute__((used)) static int
TDA9887_init(bktr_ptr_t bktr, int output2_enable)
{
 u_char addr = TDA9887_ADDR;

 i2cWrite(bktr, addr, 0, output2_enable ? 0x50 : 0xd0);
 i2cWrite(bktr, addr, 1, 0x6e);





 i2cWrite(bktr, addr, 2, 0x09);

 return 0;
}
