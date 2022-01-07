
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int rtwn_bb_read (struct rtwn_softc*,int) ;

__attribute__((used)) static int
r21au_dfs_radar_is_enabled(struct rtwn_softc *sc)
{
 return !!(rtwn_bb_read(sc, 0x924) & 0x00008000);
}
