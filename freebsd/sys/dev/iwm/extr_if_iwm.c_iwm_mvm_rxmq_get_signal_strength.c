
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {int dummy; } ;
struct TYPE_2__ {int energy_a; int energy_b; } ;
struct iwm_rx_mpdu_desc {TYPE_1__ v1; } ;


 int MAX (int,int) ;

__attribute__((used)) static int
iwm_mvm_rxmq_get_signal_strength(struct iwm_softc *sc,
    struct iwm_rx_mpdu_desc *desc)
{
 int energy_a, energy_b;

 energy_a = desc->v1.energy_a;
 energy_b = desc->v1.energy_b;
 energy_a = energy_a ? -energy_a : -256;
 energy_b = energy_b ? -energy_b : -256;
 return MAX(energy_a, energy_b);
}
