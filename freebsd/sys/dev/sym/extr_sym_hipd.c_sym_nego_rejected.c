
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcb_p ;
typedef int hcb_p ;
typedef int ccb_p ;


 int HS_BUSY ;
 int HS_PRT ;
 int OUTB (int ,int ) ;
 int sym_nego_default (int ,int ,int ) ;

__attribute__((used)) static void sym_nego_rejected(hcb_p np, tcb_p tp, ccb_p cp)
{
 sym_nego_default(np, tp, cp);
 OUTB (HS_PRT, HS_BUSY);
}
