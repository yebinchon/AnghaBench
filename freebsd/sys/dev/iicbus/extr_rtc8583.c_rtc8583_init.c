
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc8583_softc {int dev; int init_hook; } ;


 int CLOCKF_SETTIME_NO_ADJ ;
 int clock_register_flags (int ,int,int ) ;
 int clock_schedule (int ,int) ;
 int config_intrhook_disestablish (int *) ;

__attribute__((used)) static void
rtc8583_init(void *arg)
{
 struct rtc8583_softc *sc;

 sc = (struct rtc8583_softc*)arg;
 config_intrhook_disestablish(&sc->init_hook);




 clock_register_flags(sc->dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
 clock_schedule(sc->dev, 1);
 return;
}
