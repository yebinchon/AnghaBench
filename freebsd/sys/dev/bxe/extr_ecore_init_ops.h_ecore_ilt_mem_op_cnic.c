
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CONFIGURE_NIC_MODE (struct bxe_softc*) ;
 int ILT_CLIENT_SRC ;
 int ILT_CLIENT_TM ;
 int ecore_ilt_client_mem_op (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static inline int ecore_ilt_mem_op_cnic(struct bxe_softc *sc, uint8_t memop)
{
 int rc = 0;

 if (CONFIGURE_NIC_MODE(sc))
  rc = ecore_ilt_client_mem_op(sc, ILT_CLIENT_SRC, memop);
 if (!rc)
  rc = ecore_ilt_client_mem_op(sc, ILT_CLIENT_TM, memop);

 return rc;
}
