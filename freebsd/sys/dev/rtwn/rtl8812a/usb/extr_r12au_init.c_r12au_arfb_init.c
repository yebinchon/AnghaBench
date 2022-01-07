
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 scalar_t__ R12A_ARFR_2G (int) ;
 scalar_t__ R12A_ARFR_5G (int) ;
 int rtwn_write_4 (struct rtwn_softc*,scalar_t__,int) ;

__attribute__((used)) static void
r12au_arfb_init(struct rtwn_softc *sc)
{

 rtwn_write_4(sc, R12A_ARFR_5G(0), 0x00000010);
 rtwn_write_4(sc, R12A_ARFR_5G(0) + 4, 0xfffff000);


 rtwn_write_4(sc, R12A_ARFR_5G(1), 0x00000010);
 rtwn_write_4(sc, R12A_ARFR_5G(1) + 4, 0x003ff000);


 rtwn_write_4(sc, R12A_ARFR_2G(0), 0x00000015);
 rtwn_write_4(sc, R12A_ARFR_2G(0) + 4, 0x003ff000);


 rtwn_write_4(sc, R12A_ARFR_2G(1), 0x00000015);
 rtwn_write_4(sc, R12A_ARFR_2G(1) + 4, 0xffcff000);
}
