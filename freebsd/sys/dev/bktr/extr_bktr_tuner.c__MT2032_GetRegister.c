
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int bktr_ptr_t ;


 int MT2032_ADDR ;
 char* bktr_name (int ) ;
 scalar_t__ bootverbose ;
 int i2cRead (int ,int) ;
 int i2cWrite (int ,int,int,int) ;
 int printf (char*,char*,int) ;

__attribute__((used)) static int
_MT2032_GetRegister(bktr_ptr_t bktr, u_char regNum)
{
 int ch;

 if (i2cWrite(bktr, MT2032_ADDR, regNum, -1) == -1) {
  if (bootverbose)
   printf("%s: MT2032 write failed (i2c addr %#x)\n",
    bktr_name(bktr), MT2032_ADDR);
  return -1;
 }
 if ((ch = i2cRead(bktr, MT2032_ADDR + 1)) == -1) {
  if (bootverbose)
   printf("%s: MT2032 get register %d failed\n",
    bktr_name(bktr), regNum);
  return -1;
 }
 return ch;
}
