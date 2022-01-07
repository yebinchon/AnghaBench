
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int bktr_ptr_t ;


 int MT2032_ADDR ;
 int i2cWrite (int ,int ,int ,int ) ;

__attribute__((used)) static void
_MT2032_SetRegister(bktr_ptr_t bktr, u_char regNum, u_char data)
{
 i2cWrite(bktr, MT2032_ADDR, regNum, data);
}
