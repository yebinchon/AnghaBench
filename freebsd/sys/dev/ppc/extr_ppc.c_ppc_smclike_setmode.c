
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ppc_data {int ppc_avm; int ppc_dtm; int ppc_mode; } ;


 int EINVAL ;
 int PPB_ECP ;
 int PPB_EPP ;
 int PPB_PS2 ;
 int PPC_DISABLE_INTR ;
 int PPC_ECR_ECP ;
 int PPC_ECR_EPP ;
 int PPC_ECR_PS2 ;
 int PPC_ECR_RESET ;
 int PPC_ECR_STD ;
 int w_ecr (struct ppc_data*,int ) ;

__attribute__((used)) static int
ppc_smclike_setmode(struct ppc_data *ppc, int mode)
{
 u_char ecr = 0;


 if (mode && !(ppc->ppc_avm & mode))
  return (EINVAL);


 if ((ppc->ppc_avm & PPB_ECP) || (ppc->ppc_dtm & PPB_ECP)) {




  w_ecr(ppc, PPC_ECR_RESET);
  ecr = PPC_DISABLE_INTR;

  if (mode & PPB_EPP)

   ecr |= PPC_ECR_EPP;
  else if (mode & PPB_ECP)

   ecr |= PPC_ECR_ECP;
  else if (mode & PPB_PS2)

   ecr |= PPC_ECR_PS2;
  else

   ecr |= PPC_ECR_STD;

  w_ecr(ppc, ecr);
 }

 ppc->ppc_mode = mode;

 return (0);
}
