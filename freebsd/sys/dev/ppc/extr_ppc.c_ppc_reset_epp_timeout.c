
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int dummy; } ;


 char r_str (struct ppc_data*) ;
 int w_str (struct ppc_data*,char) ;

__attribute__((used)) static void
ppc_reset_epp_timeout(struct ppc_data *ppc)
{
 char r;

 r = r_str(ppc);
 w_str(ppc, r | 0x1);
 w_str(ppc, r & 0xfe);

 return;
}
