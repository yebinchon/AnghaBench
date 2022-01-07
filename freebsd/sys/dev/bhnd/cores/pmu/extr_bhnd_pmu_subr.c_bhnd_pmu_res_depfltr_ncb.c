
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int board_flags; } ;
struct TYPE_3__ {scalar_t__ chip_id; int chip_rev; } ;
struct bhnd_pmu_softc {TYPE_2__ board; TYPE_1__ cid; } ;


 int BHND_BFL_NOCBUCK ;
 scalar_t__ BHND_CHIPID_BCM4325 ;
 int BHND_PMU_GET_FLAG (int ,int ) ;

__attribute__((used)) static bool
bhnd_pmu_res_depfltr_ncb(struct bhnd_pmu_softc *sc)
{
 if (sc->cid.chip_id == BHND_CHIPID_BCM4325 && sc->cid.chip_rev <= 1)
  return (0);

 return (BHND_PMU_GET_FLAG(sc->board.board_flags, BHND_BFL_NOCBUCK));
}
