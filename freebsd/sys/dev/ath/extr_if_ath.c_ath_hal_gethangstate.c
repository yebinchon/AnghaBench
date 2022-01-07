
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int mask ;


 int HAL_DIAG_CHECK_HANGS ;
 int KASSERT (int,char*) ;
 int ath_hal_getdiagstate (struct ath_hal*,int ,int*,int,void**,int*) ;

int
ath_hal_gethangstate(struct ath_hal *ah, uint32_t mask, uint32_t *hangs)
{
 uint32_t rsize;
 void *sp;

 if (!ath_hal_getdiagstate(ah, HAL_DIAG_CHECK_HANGS, &mask, sizeof(mask), &sp, &rsize))
  return 0;
 KASSERT(rsize == sizeof(uint32_t), ("resultsize %u", rsize));
 *hangs = *(uint32_t *)sp;
 return 1;
}
