
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int sim; } ;


 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static __inline void
aic_freeze_simq(struct aic_softc *aic)
{
 xpt_freeze_simq(aic->platform_data->sim, 1);
}
