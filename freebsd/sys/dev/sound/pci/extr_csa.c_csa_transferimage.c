
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
typedef int csa_res ;


 int EINVAL ;
 int csa_writemem (int *,int,int ) ;

__attribute__((used)) static int
csa_transferimage(csa_res *resp, u_int32_t *src, u_long dest, u_long len)
{
 u_long ul;







 if ((len & 0x3) != 0)
  return (EINVAL);


 if ((dest & 0x3) != 0)
  return (EINVAL);


 for (ul = 0 ; ul < len ; ul += 4)
  csa_writemem(resp, dest + ul, src[ul >> 2]);
 return (0);
}
