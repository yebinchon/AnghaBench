
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACC (int) ;
 int ALK ;
 int ASH ;
 int BTAB ;
 int CLK ;
 int DBG ;
 int F (int) ;
 int HALT ;
 int LALT ;
 int LALTA ;
 int LCTR ;
 int LCTRA ;
 int LSH ;
 int LSHA ;
 int L_ACC ;
 int L_FN ;
 int L_SCR ;
 int META ;
 int NEXT ;
 int NLK ;
 int NOP ;
 int PASTE ;
 int PDWN ;
 int PNC ;
 int PREV ;
 int RALT ;
 int RALTA ;
 int RBT ;
 int RCTR ;
 int RCTRA ;
 int RSH ;
 int RSHA ;
 int S (int) ;
 int SLK ;
 int SPECIAL ;
 int SPSC ;
 int SUSP ;
 scalar_t__ letter ;
 int number ;
 int token ;
 int yylex () ;

__attribute__((used)) static int
get_entry(void)
{
 switch ((token = yylex())) {
 case 144:
  return NOP | SPECIAL;
 case 149:
  return LSH | SPECIAL;
 case 133:
  return RSH | SPECIAL;
 case 158:
  return CLK | SPECIAL;
 case 145:
  return NLK | SPECIAL;
 case 130:
  return SLK | SPECIAL;
 case 159:
  return BTAB | SPECIAL;
 case 154:
  return LALT | SPECIAL;
 case 152:
  return LCTR | SPECIAL;
 case 146:
  return NEXT | SPECIAL;
 case 139:
  return PREV | SPECIAL;
 case 135:
  return RCTR | SPECIAL;
 case 138:
  return RALT | SPECIAL;
 case 161:
  return ALK | SPECIAL;
 case 160:
  return ASH | SPECIAL;
 case 147:
  return META | SPECIAL;
 case 136:
  return RBT | SPECIAL;
 case 157:
  return DBG | SPECIAL;
 case 128:
  return SUSP | SPECIAL;
 case 129:
  return SPSC | SPECIAL;
 case 142:
  return PNC | SPECIAL;
 case 148:
  return LSHA | SPECIAL;
 case 132:
  return RSHA | SPECIAL;
 case 151:
  return LCTRA | SPECIAL;
 case 134:
  return RCTRA | SPECIAL;
 case 153:
  return LALTA | SPECIAL;
 case 137:
  return RALTA | SPECIAL;
 case 155:
  return HALT | SPECIAL;
 case 140:
  return PDWN | SPECIAL;
 case 141:
  return PASTE | SPECIAL;
 case 162:
  if (ACC(number) > L_ACC)
   return -1;
  return ACC(number) | SPECIAL;
 case 156:
  if (F(number) > L_FN)
   return -1;
  return F(number) | SPECIAL;
 case 131:
  if (S(number) > L_SCR)
   return -1;
  return S(number) | SPECIAL;
 case 150:
  return (unsigned char)letter;
 case 143:
  if (number < 0x000000 || number > 0x10FFFF)
   return -1;
  return number;
 default:
  return -1;
 }
}
