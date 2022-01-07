
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int ahc_map_int (struct ahc_softc*) ;

__attribute__((used)) static __inline int
aic7770_map_int(struct ahc_softc *ahc, int irq)
{






 return ahc_map_int(ahc);
}
