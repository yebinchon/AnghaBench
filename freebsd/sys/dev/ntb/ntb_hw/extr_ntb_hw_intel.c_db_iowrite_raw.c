
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;
struct ntb_softc {scalar_t__ type; } ;


 int KASSERT (int,char*) ;
 scalar_t__ NTB_ATOM ;
 scalar_t__ NTB_XEON ;
 int intel_ntb_reg_write (int,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
db_iowrite_raw(struct ntb_softc *ntb, uint64_t regoff, uint64_t val)
{

 if (ntb->type == NTB_ATOM) {
  intel_ntb_reg_write(8, regoff, val);
  return;
 }

 KASSERT(ntb->type == NTB_XEON, ("bad ntb type"));
 intel_ntb_reg_write(2, regoff, (uint16_t)val);
}
