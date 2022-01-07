
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_ACC ;
 int F_FN ;
 int F_SCR ;







 int L_ACC ;
 int L_FN ;
 int L_SCR ;
 int SPECIAL ;


 char** acc_names_u ;
 scalar_t__ isascii (int) ;
 scalar_t__ isprint (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_entry(int value)
{
 if (value & SPECIAL) {
  value &= ~SPECIAL;
  switch (value) {
  case 142:
   printf("  NOP, ");
   break;
  case 147:
   printf("  LSH, ");
   break;
  case 132:
   printf("  RSH, ");
   break;
  case 154:
   printf("  CLK, ");
   break;
  case 143:
   printf("  NLK, ");
   break;
  case 130:
   printf("  SLK, ");
   break;
  case 155:
   printf(" BTAB, ");
   break;
  case 151:
   printf(" LALT, ");
   break;
  case 149:
   printf(" LCTR, ");
   break;
  case 144:
   printf(" NEXT, ");
   break;
  case 138:
   printf(" PREV, ");
   break;
  case 134:
   printf(" RCTR, ");
   break;
  case 137:
   printf(" RALT, ");
   break;
  case 157:
   printf("  ALK, ");
   break;
  case 156:
   printf("  ASH, ");
   break;
  case 145:
   printf(" META, ");
   break;
  case 135:
   printf("  RBT, ");
   break;
  case 153:
   printf("  DBG, ");
   break;
  case 128:
   printf(" SUSP, ");
   break;
  case 129:
   printf(" SPSC, ");
   break;
  case 139:
   printf("  PNC, ");
   break;
  case 146:
   printf(" LSHA, ");
   break;
  case 131:
   printf(" RSHA, ");
   break;
  case 148:
   printf("LCTRA, ");
   break;
  case 133:
   printf("RCTRA, ");
   break;
  case 150:
   printf("LALTA, ");
   break;
  case 136:
   printf("RALTA, ");
   break;
  case 152:
   printf(" HALT, ");
   break;
  case 140:
   printf(" PDWN, ");
   break;
  case 141:
   printf("PASTE, ");
   break;
  default:
    if (value >= F_FN && value <= L_FN)
    printf(" F(%2d),", value - F_FN + 1);
    else if (value >= F_SCR && value <= L_SCR)
    printf(" S(%2d),", value - F_SCR + 1);
    else if (value >= F_ACC && value <= L_ACC)
    printf(" %-4s, ", acc_names_u[value - F_ACC]);
   else
    printf(" 0x%02X, ", value);
   break;
  }
 } else if (value == '\'') {
  printf(" '\\'', ");
 } else if (value == '\\') {
  printf(" '\\\\', ");
 } else if (isascii(value) && isprint(value)) {
  printf("  '%c', ", value);
 } else {
  printf(" 0x%02X, ", value);
 }
}
