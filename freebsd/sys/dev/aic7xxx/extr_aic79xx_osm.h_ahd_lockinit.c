
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int mtx; } ;


 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static __inline void
ahd_lockinit(struct ahd_softc *ahd)
{
 mtx_init(&ahd->platform_data->mtx, "ahd_lock", ((void*)0), MTX_DEF);
}
