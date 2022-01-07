
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int iwm_mvm_get_valid_rx_ant (struct iwm_softc*) ;
 int num_of_ant (int ) ;

boolean_t
iwm_mvm_rx_diversity_allowed(struct iwm_softc *sc)
{
 if (num_of_ant(iwm_mvm_get_valid_rx_ant(sc)) == 1)
  return FALSE;






 return TRUE;
}
