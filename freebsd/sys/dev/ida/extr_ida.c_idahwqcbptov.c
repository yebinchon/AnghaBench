
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {scalar_t__ hwqcb_busaddr; scalar_t__ hwqcbs; } ;
struct ida_qcb {int dummy; } ;
struct ida_hardware_qcb {struct ida_qcb* qcb; } ;
typedef scalar_t__ bus_addr_t ;



__attribute__((used)) static __inline struct ida_qcb *
idahwqcbptov(struct ida_softc *ida, bus_addr_t hwqcb_addr)
{
 struct ida_hardware_qcb *hwqcb;

 hwqcb = (struct ida_hardware_qcb *)
     ((bus_addr_t)ida->hwqcbs + (hwqcb_addr - ida->hwqcb_busaddr));
 return (hwqcb->qcb);
}
