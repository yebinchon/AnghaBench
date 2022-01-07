
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int mtx; } ;


 int mtx_lock (int *) ;

__attribute__((used)) static __inline void
ahc_lock(struct ahc_softc *ahc)
{
 mtx_lock(&ahc->platform_data->mtx);
}
