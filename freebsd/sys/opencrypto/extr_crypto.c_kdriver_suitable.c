
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocap {int* cc_kalg; } ;
struct cryptkop {size_t krp_op; } ;


 int CRYPTO_ALG_FLAG_SUPPORTED ;

__attribute__((used)) static __inline int
kdriver_suitable(const struct cryptocap *cap, const struct cryptkop *krp)
{
 return (cap->cc_kalg[krp->krp_op] & CRYPTO_ALG_FLAG_SUPPORTED) != 0;
}
