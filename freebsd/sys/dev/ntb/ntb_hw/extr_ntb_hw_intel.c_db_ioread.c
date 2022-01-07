
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_softc {scalar_t__ type; } ;


 int KASSERT (int,char*) ;
 scalar_t__ NTB_ATOM ;
 scalar_t__ NTB_XEON ;
 int intel_ntb_reg_read (int,int ) ;

__attribute__((used)) static inline uint64_t
db_ioread(struct ntb_softc *ntb, uint64_t regoff)
{

 if (ntb->type == NTB_ATOM)
  return (intel_ntb_reg_read(8, regoff));

 KASSERT(ntb->type == NTB_XEON, ("bad ntb type"));

 return (intel_ntb_reg_read(2, regoff));
}
