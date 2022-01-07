
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct malo_hal {int dummy; } ;


 int DELAY (int ) ;
 int MALO_FW_CHECK_USECS ;
 int MALO_FW_MAX_NUM_CHECKS ;
 int MALO_REG_INT_CODE ;
 scalar_t__ malo_hal_read4 (struct malo_hal*,int ) ;

__attribute__((used)) static int
malo_hal_waitfor(struct malo_hal *mh, uint32_t val)
{
 int i;

 for (i = 0; i < MALO_FW_MAX_NUM_CHECKS; i++) {
  DELAY(MALO_FW_CHECK_USECS);
  if (malo_hal_read4(mh, MALO_REG_INT_CODE) == val)
   return 0;
 }

 return -1;
}
