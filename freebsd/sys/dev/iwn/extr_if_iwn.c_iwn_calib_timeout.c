
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwn_softc {int calib_cnt; int calib_to; } ;


 int DPRINTF (struct iwn_softc*,int ,char*,char*) ;
 int IWN_CMD_GET_STATISTICS ;
 int IWN_DEBUG_CALIBRATE ;
 int IWN_LOCK_ASSERT (struct iwn_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct iwn_softc*) ;
 int iwn_cmd (struct iwn_softc*,int ,int *,int,int) ;
 int msecs_to_ticks (int) ;

__attribute__((used)) static void
iwn_calib_timeout(void *arg)
{
 struct iwn_softc *sc = arg;

 IWN_LOCK_ASSERT(sc);


 if (++sc->calib_cnt >= 120) {
  uint32_t flags = 0;

  DPRINTF(sc, IWN_DEBUG_CALIBRATE, "%s\n",
      "sending request for statistics");
  (void)iwn_cmd(sc, IWN_CMD_GET_STATISTICS, &flags,
      sizeof flags, 1);
  sc->calib_cnt = 0;
 }
 callout_reset(&sc->calib_to, msecs_to_ticks(500), iwn_calib_timeout,
     sc);
}
