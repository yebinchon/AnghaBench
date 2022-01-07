
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CONFIGURE_NIC_MODE (struct bxe_softc*) ;
 int ILT_CLIENT_SRC ;
 int ILT_CLIENT_TM ;
 int ecore_ilt_client_id_init_op (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static inline void ecore_ilt_init_op_cnic(struct bxe_softc *sc, uint8_t initop)
{
 if (CONFIGURE_NIC_MODE(sc))
  ecore_ilt_client_id_init_op(sc, ILT_CLIENT_SRC, initop);
 ecore_ilt_client_id_init_op(sc, ILT_CLIENT_TM, initop);
}
