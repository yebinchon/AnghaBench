
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;


 int AR8327 ;
 int AR8327_PORT_GMAC6 ;
 scalar_t__ AR8X16_IS_SWITCH (struct arswitch_softc*,int ) ;
 int AR8X16_PORT_CPU ;

__attribute__((used)) static int
arswitch_is_cpuport(struct arswitch_softc *sc, int port)
{

 return ((port == AR8X16_PORT_CPU) ||
     ((AR8X16_IS_SWITCH(sc, AR8327) &&
       port == AR8327_PORT_GMAC6)));
}
