
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct malo_hal {scalar_t__* mh_cmdbuf; } ;


 int DELAY (int) ;
 int MAX_WAIT_FW_COMPLETE_ITERATIONS ;
 scalar_t__ le16toh (int ) ;

__attribute__((used)) static int
malo_hal_waitforcmd(struct malo_hal *mh, uint16_t cmd)
{

 int i;

 for (i = 0; i < 10000; i++) {
  if (mh->mh_cmdbuf[0] == le16toh(cmd))
   return 1;

  DELAY(1 * 1000);
 }

 return 0;

}
