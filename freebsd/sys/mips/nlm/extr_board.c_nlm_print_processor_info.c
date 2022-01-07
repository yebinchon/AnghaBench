
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






 int mips_rd_prid () ;
 int printf (char*,...) ;

__attribute__((used)) static void
nlm_print_processor_info(void)
{
 uint32_t procid;
 int prid, rev;
 char *chip, *revstr;

 procid = mips_rd_prid();
 prid = (procid >> 8) & 0xff;
 rev = procid & 0xff;

 switch (prid) {
 case 128:
  chip = "XLP 832";
  break;
 case 131:
  chip = "XLP 3xx";
  break;
 case 129:
 case 130:
  chip = "XLP 4xx";
  break;
 default:
  chip = "XLP ?xx";
  break;
 }
 switch (rev) {
 case 0:
  revstr = "A0"; break;
 case 1:
  revstr = "A1"; break;
 case 2:
  revstr = "A2"; break;
 case 3:
  revstr = "B0"; break;
 case 4:
  revstr = "B1"; break;
 default:
  revstr = "??"; break;
 }

 printf("Processor info:\n");
 printf("  Netlogic %s %s [%x]\n", chip, revstr, procid);
}
