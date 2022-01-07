
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* hcb_p ;
struct TYPE_4__ {int multiplier; int features; } ;


 int DBLEN ;
 int DBLSEL ;
 int FE_LCKFRQ ;
 int HSC ;
 int INB (int ) ;
 int LCKFRQ ;
 int OUTB (int ,int) ;
 int UDELAY (int) ;
 int nc_scntl3 ;
 int nc_stest1 ;
 int nc_stest3 ;
 int nc_stest4 ;
 int printf (char*,char*) ;
 char* sym_name (TYPE_1__*) ;
 int sym_verbose ;

__attribute__((used)) static void sym_selectclock(hcb_p np, u_char scntl3)
{



 if (np->multiplier <= 1) {
  OUTB(nc_scntl3, scntl3);
  return;
 }

 if (sym_verbose >= 2)
  printf ("%s: enabling clock multiplier\n", sym_name(np));

 OUTB(nc_stest1, DBLEN);




 if (np->features & FE_LCKFRQ) {
  int i = 20;
  while (!(INB(nc_stest4) & LCKFRQ) && --i > 0)
   UDELAY (20);
  if (!i)
   printf("%s: the chip cannot lock the frequency\n",
    sym_name(np));
 } else
  UDELAY (20);
 OUTB(nc_stest3, HSC);
 OUTB(nc_scntl3, scntl3);
 OUTB(nc_stest1, (DBLEN|DBLSEL));
 OUTB(nc_stest3, 0x00);
}
