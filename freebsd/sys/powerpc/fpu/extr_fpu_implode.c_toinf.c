
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpemu {int fe_fpscr; int fe_cx; } ;


 int FPSCR_OX ;
 int FPSCR_RN ;





__attribute__((used)) static int
toinf(struct fpemu *fe, int sign)
{
 int inf;


 switch ((fe->fe_fpscr) & FPSCR_RN) {

 default:
 case 130:
  inf = 1;
  break;

 case 128:
  inf = 0;
  break;

 case 129:
  inf = sign == 0;
  break;

 case 131:
  inf = sign;
  break;
 }
 if (inf)
  fe->fe_cx |= FPSCR_OX;
 return (inf);
}
