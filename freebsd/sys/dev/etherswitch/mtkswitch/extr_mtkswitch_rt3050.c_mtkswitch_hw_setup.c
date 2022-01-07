
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int dummy; } ;


 int FPA_ALL_AUTO ;
 int MTKSWITCH_FPA ;
 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int ,int ) ;

__attribute__((used)) static int
mtkswitch_hw_setup(struct mtkswitch_softc *sc)
{
 MTKSWITCH_WRITE(sc, MTKSWITCH_FPA, FPA_ALL_AUTO);

 return (0);
}
