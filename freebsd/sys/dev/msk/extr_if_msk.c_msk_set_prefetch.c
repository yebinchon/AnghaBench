
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msk_softc {int dummy; } ;
typedef int bus_addr_t ;


 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int ) ;
 int MSK_ADDR_HI (int ) ;
 int MSK_ADDR_LO (int ) ;
 int PREF_UNIT_ADDR_HI_REG ;
 int PREF_UNIT_ADDR_LOW_REG ;
 int PREF_UNIT_CTRL_REG ;
 int PREF_UNIT_LAST_IDX_REG ;
 int PREF_UNIT_OP_ON ;
 int PREF_UNIT_RST_CLR ;
 int PREF_UNIT_RST_SET ;
 int Y2_PREF_Q_ADDR (int,int ) ;

__attribute__((used)) static void
msk_set_prefetch(struct msk_softc *sc, int qaddr, bus_addr_t addr,
    uint32_t count)
{


 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_CTRL_REG),
     PREF_UNIT_RST_SET);
 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_CTRL_REG),
     PREF_UNIT_RST_CLR);

 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_ADDR_LOW_REG),
     MSK_ADDR_LO(addr));
 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_ADDR_HI_REG),
     MSK_ADDR_HI(addr));

 CSR_WRITE_2(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_LAST_IDX_REG),
     count);

 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_CTRL_REG),
     PREF_UNIT_OP_ON);

 CSR_READ_4(sc, Y2_PREF_Q_ADDR(qaddr, PREF_UNIT_CTRL_REG));
}
