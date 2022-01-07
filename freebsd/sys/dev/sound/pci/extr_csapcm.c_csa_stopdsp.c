
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csa_res ;


 int BA1_SPCR ;
 int csa_writemem (int *,int ,int ) ;

__attribute__((used)) static int
csa_stopdsp(csa_res *resp)
{




 csa_writemem(resp, BA1_SPCR, 0);

 return (0);
}
