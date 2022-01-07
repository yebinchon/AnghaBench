
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int CHIP_IS_E1H (struct bxe_softc*) ;



 int QM_INIT (int) ;
 int QM_REG_BASEADDR ;
 int QM_REG_BASEADDR_EXT_A ;
 int QM_REG_PTRTBL ;
 int QM_REG_PTRTBL_EXT_A ;
 int ecore_qm_set_ptr_table (struct bxe_softc*,int,int ,int ) ;

__attribute__((used)) static void ecore_qm_init_ptr_table(struct bxe_softc *sc, int qm_cid_count,
        uint8_t initop)
{
 if (!QM_INIT(qm_cid_count))
  return;

 switch (initop) {
 case 129:

 case 128:
  ecore_qm_set_ptr_table(sc, qm_cid_count,
           QM_REG_BASEADDR, QM_REG_PTRTBL);
  if (CHIP_IS_E1H(sc))
   ecore_qm_set_ptr_table(sc, qm_cid_count,
            QM_REG_BASEADDR_EXT_A,
            QM_REG_PTRTBL_EXT_A);
  break;
 case 130:
  break;
 }
}
