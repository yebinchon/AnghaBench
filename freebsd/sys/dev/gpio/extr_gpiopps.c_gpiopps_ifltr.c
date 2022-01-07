
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_softc {int pps_state; } ;


 int FILTER_SCHEDULE_THREAD ;
 int pps_capture (int *) ;

__attribute__((used)) static int
gpiopps_ifltr(void *arg)
{
 struct pps_softc *sc = arg;
 pps_capture(&sc->pps_state);
 return (FILTER_SCHEDULE_THREAD);
}
