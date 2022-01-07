
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;


 int DELAY (int) ;
 int IWN_CLRBITS (struct iwn_softc*,int ,int ) ;
 int IWN_GP_CNTRL ;
 int IWN_GP_CNTRL_INIT_DONE ;
 int IWN_RESET ;
 int IWN_RESET_SW ;
 int IWN_SETBITS (struct iwn_softc*,int ,int ) ;
 int iwn_apm_stop_master (struct iwn_softc*) ;

__attribute__((used)) static void
iwn_apm_stop(struct iwn_softc *sc)
{
 iwn_apm_stop_master(sc);


 IWN_SETBITS(sc, IWN_RESET, IWN_RESET_SW);
 DELAY(10);

 IWN_CLRBITS(sc, IWN_GP_CNTRL, IWN_GP_CNTRL_INIT_DONE);
}
