
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_flags; } ;
struct bhnd_pmu_softc {TYPE_1__ board; } ;


 int BHND_BFL_BUCKBOOST ;
 int BHND_PMU_GET_FLAG (int ,int ) ;

__attribute__((used)) static bool
bhnd_pmu_res_depfltr_bb(struct bhnd_pmu_softc *sc)
{
 return (BHND_PMU_GET_FLAG(sc->board.board_flags, BHND_BFL_BUCKBOOST));
}
