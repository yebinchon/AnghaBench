
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int sim; } ;


 int TRUE ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static __inline void
aic_release_simq(struct aic_softc *aic)
{
 xpt_release_simq(aic->platform_data->sim, TRUE);
}
