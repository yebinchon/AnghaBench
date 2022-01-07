
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int mpr_mtx; } ;
struct mpr_command {scalar_t__ cm_state; struct mpr_softc* cm_sc; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ MPR_CM_STATE_BUSY ;
 scalar_t__ MPR_CM_STATE_INQUEUE ;
 int MPR_INFO ;
 int MPR_RECOVERY ;
 int mpr_reinit (struct mpr_softc*) ;
 int mprsas_log_command (struct mpr_command*,int,char*,struct mpr_command*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
mprsas_tm_timeout(void *data)
{
 struct mpr_command *tm = data;
 struct mpr_softc *sc = tm->cm_sc;

 mtx_assert(&sc->mpr_mtx, MA_OWNED);

 mprsas_log_command(tm, MPR_INFO|MPR_RECOVERY, "task mgmt %p timed "
     "out\n", tm);

 KASSERT(tm->cm_state == MPR_CM_STATE_INQUEUE,
     ("command not inqueue\n"));

 tm->cm_state = MPR_CM_STATE_BUSY;
 mpr_reinit(sc);
}
