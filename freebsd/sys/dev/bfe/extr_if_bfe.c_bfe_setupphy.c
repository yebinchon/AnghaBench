
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int dummy; } ;


 int bfe_readphy (struct bfe_softc*,int,int*) ;
 int bfe_writephy (struct bfe_softc*,int,int) ;

__attribute__((used)) static int
bfe_setupphy(struct bfe_softc *sc)
{
 u_int32_t val;


 bfe_readphy(sc, 26, &val);
 bfe_writephy(sc, 26, val & 0x7fff);
 bfe_readphy(sc, 26, &val);


 bfe_readphy(sc, 27, &val);
 bfe_writephy(sc, 27, val | (1 << 6));

 return (0);
}
