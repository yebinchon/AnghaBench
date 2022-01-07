
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;





 scalar_t__ QM_INIT (int) ;
 int QM_REG_CONNNUM_0 ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SC_PORT (struct bxe_softc*) ;

__attribute__((used)) static void ecore_qm_init_cid_count(struct bxe_softc *sc, int qm_cid_count,
        uint8_t initop)
{
 int port = SC_PORT(sc);

 if (QM_INIT(qm_cid_count)) {
  switch (initop) {
  case 129:

  case 128:
   REG_WR(sc, QM_REG_CONNNUM_0 + port*4,
          qm_cid_count/16 - 1);
   break;
  case 130:
   break;
  }
 }
}
