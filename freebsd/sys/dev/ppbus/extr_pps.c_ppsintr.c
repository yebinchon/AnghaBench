
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pps_data {int ppbus; TYPE_2__* pps; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ ppsparam; } ;


 int AUTOFEED ;
 int IRQENABLE ;
 int PPS_CAPTUREASSERT ;
 int PPS_ECHOASSERT ;
 int nACK ;
 int ppb_assert_locked (int ) ;
 int ppb_rstr (int ) ;
 int ppb_wctr (int ,int) ;
 int pps_capture (TYPE_2__*) ;
 int pps_event (TYPE_2__*,int ) ;

__attribute__((used)) static void
ppsintr(void *arg)
{
 struct pps_data *sc = (struct pps_data *)arg;

 ppb_assert_locked(sc->ppbus);
 pps_capture(&sc->pps[0]);
 if (!(ppb_rstr(sc->ppbus) & nACK))
  return;

 if (sc->pps[0].ppsparam.mode & PPS_ECHOASSERT)
  ppb_wctr(sc->ppbus, IRQENABLE | AUTOFEED);
 pps_event(&sc->pps[0], PPS_CAPTUREASSERT);
 if (sc->pps[0].ppsparam.mode & PPS_ECHOASSERT)
  ppb_wctr(sc->ppbus, IRQENABLE);
}
