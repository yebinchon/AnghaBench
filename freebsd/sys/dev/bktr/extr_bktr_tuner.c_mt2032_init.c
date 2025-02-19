
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int bktr_ptr_t ;


 int DELAY (int) ;
 int MT2032_GetRegister (int) ;
 int MT2032_SetRegister (int,int) ;
 int MT2032_XOGC ;
 int TDA9887_init (int ,int) ;
 char* bktr_name (int ) ;
 int printf (char*,char*,...) ;

int
mt2032_init(bktr_ptr_t bktr)
{
 u_char rdbuf[22];
 int xogc, xok = 0;
 int i;
 int x;

 TDA9887_init(bktr, 0);

 for (i = 0; i < 21; i++) {
  if ((x = MT2032_GetRegister(i)) == -1)
   break;
  rdbuf[i] = x;
 }
 if (i < 21)
  return -1;

 printf("%s: MT2032: Companycode=%02x%02x Part=%02x Revision=%02x\n",
  bktr_name(bktr),
  rdbuf[0x11], rdbuf[0x12], rdbuf[0x13], rdbuf[0x14]);
 if (rdbuf[0x13] != 4) {
  printf("%s: MT2032 not found or unknown type\n", bktr_name(bktr));
  return -1;
 }


 MT2032_SetRegister(2, 0xff);
 MT2032_SetRegister(3, 0x0f);
 MT2032_SetRegister(4, 0x1f);
 MT2032_SetRegister(6, 0xe4);
 MT2032_SetRegister(7, 0x8f);
 MT2032_SetRegister(8, 0xc3);
 MT2032_SetRegister(9, 0x4e);
 MT2032_SetRegister(10, 0xec);
 MT2032_SetRegister(13, 0x32);


 xogc = 7;
 do {
  DELAY(10000);
  xok = MT2032_GetRegister(0x0e) & 0x01;
  if (xok == 1) {
   break;
  }
  xogc--;
  if (xogc == 3) {
   xogc = 4;
   break;
  }
  MT2032_SetRegister(7, 0x88 + xogc);
 } while (xok != 1);

 TDA9887_init(bktr, 1);

 MT2032_XOGC = xogc;

 return 0;
}
