
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int dummy; } ;


 int RT_DEBUG_INTR ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;

__attribute__((used)) static void
rt_cnt_gdm_af(struct rt_softc *sc)
{

 RT_DPRINTF(sc, RT_DEBUG_INTR,
     "GDMA 1 & 2 Counter Table Almost Full\n");
}
