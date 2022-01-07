
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt_softc {scalar_t__ rt_chipid; int * tx_queue_not_empty; } ;


 scalar_t__ CDMA_OQ_STA ;
 int DELAY (int) ;
 int P0_IQ_PCNT_SHIFT ;
 int P1_IQ_PCNT_SHIFT ;
 scalar_t__ PSE_BASE ;
 scalar_t__ PSE_IQ_STA ;
 scalar_t__ RT_CHIPID_MT7620 ;
 scalar_t__ RT_CHIPID_MT7621 ;
 scalar_t__ RT_CHIPID_RT5350 ;
 int RT_DEBUG_WATCHDOG ;
 int RT_DPRINTF (struct rt_softc*,int ,char*,int) ;
 int RT_READ (struct rt_softc*,scalar_t__) ;

__attribute__((used)) static void
rt_watchdog(struct rt_softc *sc)
{
 uint32_t tmp;



 if(sc->rt_chipid != RT_CHIPID_RT5350 &&
    sc->rt_chipid != RT_CHIPID_MT7620 &&
    sc->rt_chipid != RT_CHIPID_MT7621) {
  tmp = RT_READ(sc, PSE_BASE + CDMA_OQ_STA);

  RT_DPRINTF(sc, RT_DEBUG_WATCHDOG,
      "watchdog: PSE_IQ_STA=0x%08x\n", tmp);
 }
}
