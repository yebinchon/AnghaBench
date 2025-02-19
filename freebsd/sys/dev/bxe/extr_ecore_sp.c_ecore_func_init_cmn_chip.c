
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_sp_drv_ops {int (* init_hw_cmn_chip ) (struct bxe_softc*) ;} ;
struct bxe_softc {int dummy; } ;


 int ecore_func_init_port (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int stub1 (struct bxe_softc*) ;

__attribute__((used)) static inline int ecore_func_init_cmn_chip(struct bxe_softc *sc,
     const struct ecore_func_sp_drv_ops *drv)
{
 int rc = drv->init_hw_cmn_chip(sc);
 if (rc)
  return rc;

 return ecore_func_init_port(sc, drv);
}
