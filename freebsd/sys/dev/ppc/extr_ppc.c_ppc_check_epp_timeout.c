
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int dummy; } ;


 int TIMEOUT ;
 int ppc_reset_epp_timeout (struct ppc_data*) ;
 int r_str (struct ppc_data*) ;

__attribute__((used)) static int
ppc_check_epp_timeout(struct ppc_data *ppc)
{
 ppc_reset_epp_timeout(ppc);

 return (!(r_str(ppc) & TIMEOUT));
}
