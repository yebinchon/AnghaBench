
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_node {int dummy; } ;


 int TRUE ;
 int iwm_mvm_sta_send_to_fw (struct iwm_softc*,struct iwm_node*,int ) ;

int
iwm_mvm_update_sta(struct iwm_softc *sc, struct iwm_node *in)
{
 return iwm_mvm_sta_send_to_fw(sc, in, TRUE);
}
