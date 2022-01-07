
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef scalar_t__ u32 ;
struct sym_fw {scalar_t__ b_ofs; scalar_t__ a_ofs; } ;
typedef TYPE_1__* hcb_p ;
struct TYPE_3__ {scalar_t__ const scriptb_ba; int fwb_bas; scalar_t__ const scripta_ba; int fwa_bas; } ;



__attribute__((used)) static void
sym_fw_setup_bus_addresses(hcb_p np, const struct sym_fw *fw)
{
 u32 *pa;
 const u_short *po;
 int i;





 po = (const u_short *) fw->a_ofs;
 pa = (u32 *) &np->fwa_bas;
 for (i = 0 ; i < sizeof(np->fwa_bas)/sizeof(u32) ; i++)
  pa[i] = np->scripta_ba + po[i];




 po = (const u_short *) fw->b_ofs;
 pa = (u32 *) &np->fwb_bas;
 for (i = 0 ; i < sizeof(np->fwb_bas)/sizeof(u32) ; i++)
  pa[i] = np->scriptb_ba + po[i];
}
