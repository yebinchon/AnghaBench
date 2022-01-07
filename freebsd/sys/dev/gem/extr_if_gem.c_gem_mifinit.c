
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem_softc {int dummy; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int GEM_BANK1_BARRIER (struct gem_softc*,int ,int,int) ;
 int GEM_BANK1_READ_4 (struct gem_softc*,int ) ;
 int GEM_BANK1_WRITE_4 (struct gem_softc*,int ,int) ;
 int GEM_MIF_CONFIG ;
 int GEM_MIF_CONFIG_BB_ENA ;

__attribute__((used)) static void
gem_mifinit(struct gem_softc *sc)
{


 GEM_BANK1_WRITE_4(sc, GEM_MIF_CONFIG,
     GEM_BANK1_READ_4(sc, GEM_MIF_CONFIG) & ~GEM_MIF_CONFIG_BB_ENA);
 GEM_BANK1_BARRIER(sc, GEM_MIF_CONFIG, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
