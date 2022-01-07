
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int dummy; } ;
struct ida_qcb {int hwqcb_busaddr; } ;


 int R_42XX_REQUEST ;
 int ida_outl (struct ida_softc*,int ,int ) ;

__attribute__((used)) static void
ida_v4_submit(struct ida_softc *ida, struct ida_qcb *qcb)
{
 ida_outl(ida, R_42XX_REQUEST, qcb->hwqcb_busaddr);
}
