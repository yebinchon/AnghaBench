
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int rtwn_bb_setbits (struct rtwn_softc*,int,int,int ) ;

__attribute__((used)) static void
r21au_dfs_radar_disable(struct rtwn_softc *sc)
{
 rtwn_bb_setbits(sc, 0x924, 0x00008000, 0);
}
