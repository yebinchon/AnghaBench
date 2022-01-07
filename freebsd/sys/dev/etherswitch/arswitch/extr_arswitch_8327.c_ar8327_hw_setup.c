
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;


 int AR8327_NUM_PHYS ;
 int DELAY (int) ;
 int ar8327_init_pdata (struct arswitch_softc*) ;
 int ar8327_phy_fixup (struct arswitch_softc*,int) ;

__attribute__((used)) static int
ar8327_hw_setup(struct arswitch_softc *sc)
{
 int i;
 int err;


 err = ar8327_init_pdata(sc);
 if (err != 0)
  return (err);



 for (i = 0; i < AR8327_NUM_PHYS; i++) {

  ar8327_phy_fixup(sc, i);




 }


 DELAY(1000);

 return (0);
}
