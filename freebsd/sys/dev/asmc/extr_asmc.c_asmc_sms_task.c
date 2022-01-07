
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asmc_softc {int sc_sms_intrtype; } ;
typedef int notify ;





 int devctl_notify (char*,char*,char*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
asmc_sms_task(void *arg, int pending)
{
 struct asmc_softc *sc = (struct asmc_softc *)arg;
 char notify[16];
 int type;

 switch (sc->sc_sms_intrtype) {
 case 130:
  type = 2;
  break;
 case 129:
  type = 1;
  break;
 case 128:
  type = 0;
  break;
 default:
  type = 255;
 }

 snprintf(notify, sizeof(notify), " notify=0x%x", type);
 devctl_notify("ACPI", "asmc", "SMS", notify);
}
