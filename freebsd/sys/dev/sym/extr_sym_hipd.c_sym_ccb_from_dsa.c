
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef TYPE_1__* hcb_p ;
typedef TYPE_2__* ccb_p ;
struct TYPE_6__ {scalar_t__ ccb_ba; struct TYPE_6__* link_ccbh; } ;
struct TYPE_5__ {TYPE_2__** ccbh; } ;


 int CCB_HASH_CODE (scalar_t__) ;

__attribute__((used)) static ccb_p sym_ccb_from_dsa(hcb_p np, u32 dsa)
{
 int hcode;
 ccb_p cp;

 hcode = CCB_HASH_CODE(dsa);
 cp = np->ccbh[hcode];
 while (cp) {
  if (cp->ccb_ba == dsa)
   break;
  cp = cp->link_ccbh;
 }

 return cp;
}
