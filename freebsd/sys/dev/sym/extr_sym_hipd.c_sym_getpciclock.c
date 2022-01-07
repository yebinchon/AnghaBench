
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hcb_p ;
struct TYPE_4__ {int features; int pciclk_khz; } ;


 int FE_C10 ;
 int OUTB (int ,int ) ;
 int SCLK ;
 int nc_stest1 ;
 scalar_t__ sym_getfreq (TYPE_1__*) ;

__attribute__((used)) static int sym_getpciclock (hcb_p np)
{
 int f = 0;






 if (!(np->features & FE_C10)) {
  OUTB (nc_stest1, SCLK);
  f = (int) sym_getfreq (np);
  OUTB (nc_stest1, 0);
 }
 np->pciclk_khz = f;

 return f;
}
