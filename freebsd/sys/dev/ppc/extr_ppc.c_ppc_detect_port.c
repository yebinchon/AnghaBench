
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int dummy; } ;


 int r_dtr (struct ppc_data*) ;
 int w_ctr (struct ppc_data*,int) ;
 int w_dtr (struct ppc_data*,int) ;

__attribute__((used)) static int
ppc_detect_port(struct ppc_data *ppc)
{

 w_ctr(ppc, 0x0c);
 w_dtr(ppc, 0xaa);
 if (r_dtr(ppc) != 0xaa)
  return (0);

 return (1);
}
