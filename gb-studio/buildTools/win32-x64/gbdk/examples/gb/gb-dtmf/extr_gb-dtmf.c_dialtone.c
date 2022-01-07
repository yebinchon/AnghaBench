
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef size_t UBYTE ;


 int C1 ;
 int C2 ;
 int C3 ;
 int C4 ;
 int NR13_REG ;
 int NR23_REG ;
 int NR24_REG ;
 int NR51_REG ;
 int R1 ;
 int R2 ;
 int R3 ;
 int R4 ;
 int delay (int ) ;

void dialtone(UWORD dtmf_on, UWORD dtmf_off, char str[20])
{
 UBYTE i = 0;

 while(str[i]){
  switch(str[i]){
      case '1':
     NR13_REG = R1;
     NR23_REG = C1;
     break;
      case '2':
     NR13_REG = R1;
     NR23_REG = C2;
     break;
      case '3':
     NR13_REG = R1;
     NR23_REG = C3;
     break;
      case 'A':
      case 'a':
     NR13_REG = R1;
     NR23_REG = C4;
     break;
      case '4':
     NR13_REG = R2;
     NR23_REG = C1;
     break;
      case '5':
     NR13_REG = R2;
     NR23_REG = C2;
     break;
      case '6':
     NR13_REG = R2;
     NR23_REG = C3;
     break;
   case 'B':
   case 'b':
     NR13_REG = R2;
     NR23_REG = C4;
     break;
   case '7':
     NR13_REG = R3;
     NR23_REG = C1;
     break;
   case '8':
     NR13_REG = R3;
     NR23_REG = C2;
     break;
   case '9':
     NR13_REG = R3;
     NR23_REG = C3;
     break;
   case 'C':
   case 'c':
     NR13_REG = R3;
     NR23_REG = C4;
     break;
   case '*':
     NR13_REG = R4;
     NR23_REG = C1;
     break;
   case '0':
     NR13_REG = R4;
     NR23_REG = C2;
     break;
   case '#':
     NR13_REG = R4;
     NR23_REG = C3;
     break;
   case 'D':
   case 'd':
     NR13_REG = R4;
     NR23_REG = C4;
     break;
   case ',':
     delay(dtmf_on);
     delay(dtmf_off);

   default:
     NR51_REG = 0x00U;
     goto skip;

    }
  NR24_REG = 0x87U;
  NR51_REG = 0x33U;
  delay(dtmf_on);

  NR51_REG = 0x00U;
  delay(dtmf_off);

   skip:
  i++;
 }
}
