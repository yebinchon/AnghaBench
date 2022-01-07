
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int dummy; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CAS_BARRIER (struct cas_softc*,int ,int,int) ;
 int CAS_MIF_CONF ;
 int CAS_MIF_CONF_BB_MODE ;
 int CAS_READ_4 (struct cas_softc*,int ) ;
 int CAS_WRITE_4 (struct cas_softc*,int ,int) ;

__attribute__((used)) static void
cas_mifinit(struct cas_softc *sc)
{


 CAS_WRITE_4(sc, CAS_MIF_CONF,
     CAS_READ_4(sc, CAS_MIF_CONF) & ~CAS_MIF_CONF_BB_MODE);
 CAS_BARRIER(sc, CAS_MIF_CONF, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
