
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POCE_SOFTC ;


 scalar_t__ IS_BE (int ) ;
 scalar_t__ IS_SH (int ) ;
 int MPU_EP_SEMAPHORE_BE3 ;
 int MPU_EP_SEMAPHORE_SH ;
 int MPU_EP_SEMAPHORE_XE201 ;

__attribute__((used)) static inline int MPU_EP_SEMAPHORE(POCE_SOFTC sc)
{
 if (IS_BE(sc))
  return MPU_EP_SEMAPHORE_BE3;
 else if (IS_SH(sc))
  return MPU_EP_SEMAPHORE_SH;
 else
  return MPU_EP_SEMAPHORE_XE201;
}
