
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; } ;
struct com_s {int unit; } ;


 int CD1400_CCR ;
 int LOG_ERR ;
 scalar_t__ cd_getreg (struct com_s*,int ) ;
 int log (int ,char*,int ,long) ;
 int microtime (struct timeval*) ;

__attribute__((used)) static void
cd1400_channel_cmd_wait(struct com_s *com)
{
 struct timeval start;
 struct timeval tv;
 long usec;

 if (cd_getreg(com, CD1400_CCR) == 0)
  return;
 microtime(&start);
 for (;;) {
  if (cd_getreg(com, CD1400_CCR) == 0)
   return;
  microtime(&tv);
  usec = 1000000 * (tv.tv_sec - start.tv_sec) +
      tv.tv_usec - start.tv_usec;
  if (usec >= 5000) {
   log(LOG_ERR,
       "cy%d: channel command timeout (%ld usec)\n",
       com->unit, usec);
   return;
  }
 }
}
