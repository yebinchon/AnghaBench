
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct xhci_trb {int qwTrb0; int dwTrb3; int dwTrb2; } ;


 int XHCI_TRB_2_ERROR_SET (int ) ;
 int XHCI_TRB_3_TYPE_SET (int ) ;

__attribute__((used)) static void
pci_xhci_set_evtrb(struct xhci_trb *evtrb, uint64_t port, uint32_t errcode,
    uint32_t evtype)
{
 evtrb->qwTrb0 = port << 24;
 evtrb->dwTrb2 = XHCI_TRB_2_ERROR_SET(errcode);
 evtrb->dwTrb3 = XHCI_TRB_3_TYPE_SET(evtype);
}
