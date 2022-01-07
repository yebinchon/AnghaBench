
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hcb_p ;


 int OUTB (int ,int ) ;
 int SRST ;
 int UDELAY (int) ;
 int nc_istat ;

__attribute__((used)) static void sym_chip_reset (hcb_p np)
{
 OUTB (nc_istat, SRST);
 UDELAY (10);
 OUTB (nc_istat, 0);
 UDELAY(2000);
}
