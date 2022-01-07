
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int mtx; } ;


 int mtx_unlock (int *) ;

__attribute__((used)) static __inline void
ahc_unlock(struct ahc_softc *ahc)
{
 mtx_unlock(&ahc->platform_data->mtx);
}
