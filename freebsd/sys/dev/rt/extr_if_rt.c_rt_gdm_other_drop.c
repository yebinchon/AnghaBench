
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int dummy; } ;


 int RT_DEBUG_INTR ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;

__attribute__((used)) static void
rt_gdm_other_drop(struct rt_softc *sc)
{

 RT_DPRINTF(sc, RT_DEBUG_INTR,
     "GDMA 1 & 2 discard a packet due to other reason\n");
}
