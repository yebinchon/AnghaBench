
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct csa_info {int res; } ;
typedef int kobj_t ;


 scalar_t__ BA0_AC97_RESET ;
 int csa_active (struct csa_info*,int) ;
 scalar_t__ csa_readcodec (int *,scalar_t__,int*) ;

__attribute__((used)) static int
csa_rdcd(kobj_t obj, void *devinfo, int regno)
{
 u_int32_t data;
 struct csa_info *csa = (struct csa_info *)devinfo;

 csa_active(csa, 1);
 if (csa_readcodec(&csa->res, regno + BA0_AC97_RESET, &data))
  data = 0;
 csa_active(csa, -1);

 return data;
}
