
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uath_softc {int dummy; } ;
struct uath_cmd_rx_filter {void* op; void* bits; } ;


 int DPRINTF (struct uath_softc*,int,char*,int ,int ) ;
 int UATH_DEBUG_RECV ;
 int UATH_DEBUG_RECV_ALL ;
 int WDCMSG_RX_FILTER ;
 void* htobe32 (int ) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_cmd_rx_filter*,int,int ) ;

__attribute__((used)) static int
uath_set_rxfilter(struct uath_softc *sc, uint32_t bits, uint32_t op)
{
 struct uath_cmd_rx_filter rxfilter;

 rxfilter.bits = htobe32(bits);
 rxfilter.op = htobe32(op);

 DPRINTF(sc, UATH_DEBUG_RECV | UATH_DEBUG_RECV_ALL,
     "setting Rx filter=0x%x flags=0x%x\n", bits, op);
 return uath_cmd_write(sc, WDCMSG_RX_FILTER, &rxfilter,
     sizeof rxfilter, 0);
}
