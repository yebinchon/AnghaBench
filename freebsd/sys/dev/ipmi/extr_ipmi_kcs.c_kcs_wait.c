
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;


 int DELAY (int) ;
 int INB (struct ipmi_softc*,int ) ;
 int KCS_CTL_STS ;
 int MAX_TIMEOUT ;
 int POLLING_DELAY_MAX ;
 int POLLING_DELAY_MIN ;
 int ticks ;

__attribute__((used)) static int
kcs_wait(struct ipmi_softc *sc, int value, int mask)
{
 int status, start = ticks;
 int delay_usec = POLLING_DELAY_MIN;

 status = INB(sc, KCS_CTL_STS);
 while (ticks - start < MAX_TIMEOUT && (status & mask) != value) {




  DELAY(delay_usec);
  status = INB(sc, KCS_CTL_STS);
  if (delay_usec < POLLING_DELAY_MAX)
   delay_usec *= 2;
 }
 return (status);
}
