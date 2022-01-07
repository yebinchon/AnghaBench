
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct kiic_softc {int dummy; } ;


 int I2C_PORT ;
 int KASSERT (int,char*) ;
 int MODE ;
 int kiic_readreg (struct kiic_softc*,int ) ;
 int kiic_writereg (struct kiic_softc*,int ,int) ;

__attribute__((used)) static void
kiic_setport(struct kiic_softc *sc, u_int port)
{
 u_int x;

 KASSERT(port == 1 || port == 0, ("bad port"));
 x = kiic_readreg(sc, MODE);
 x &= ~I2C_PORT;
 x |= (port << 4);
 kiic_writereg(sc, MODE, x);
}
