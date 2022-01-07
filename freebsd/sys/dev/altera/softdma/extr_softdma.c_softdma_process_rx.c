
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct softdma_softc {int * res; } ;
struct softdma_desc {size_t len; scalar_t__ dst_addr; } ;
struct softdma_channel {struct softdma_softc* sc; } ;


 scalar_t__ A_ONCHIP_FIFO_MEM_CORE_CHANNEL_MASK ;
 int A_ONCHIP_FIFO_MEM_CORE_DATA ;
 scalar_t__ A_ONCHIP_FIFO_MEM_CORE_EMPTY_MASK ;
 scalar_t__ A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT ;
 scalar_t__ A_ONCHIP_FIFO_MEM_CORE_EOP ;
 scalar_t__ A_ONCHIP_FIFO_MEM_CORE_ERROR_MASK ;
 int A_ONCHIP_FIFO_MEM_CORE_METADATA ;
 scalar_t__ A_ONCHIP_FIFO_MEM_CORE_SOP ;
 scalar_t__ bus_read_4 (int ,int ) ;
 int panic (char*,scalar_t__) ;
 scalar_t__ softdma_fill_level (struct softdma_softc*) ;
 scalar_t__ softdma_mem_read (struct softdma_softc*,int ) ;

__attribute__((used)) static int
softdma_process_rx(struct softdma_channel *chan, struct softdma_desc *desc)
{
 uint32_t src_offs, dst_offs;
 struct softdma_softc *sc;
 uint32_t fill_level;
 uint32_t empty;
 uint32_t meta;
 uint32_t data;
 int sop_rcvd;
 int timeout;
 size_t len;
 int error;

 sc = chan->sc;
 empty = 0;
 src_offs = dst_offs = 0;
 error = 0;

 fill_level = softdma_fill_level(sc);
 if (fill_level == 0) {

  return (0);
 }

 len = desc->len;

 sop_rcvd = 0;
 while (fill_level) {
  empty = 0;
  data = bus_read_4(sc->res[0], A_ONCHIP_FIFO_MEM_CORE_DATA);
  meta = softdma_mem_read(sc, A_ONCHIP_FIFO_MEM_CORE_METADATA);

  if (meta & A_ONCHIP_FIFO_MEM_CORE_ERROR_MASK) {
   error = 1;
   break;
  }

  if ((meta & A_ONCHIP_FIFO_MEM_CORE_CHANNEL_MASK) != 0) {
   error = 1;
   break;
  }

  if (meta & A_ONCHIP_FIFO_MEM_CORE_SOP) {
   sop_rcvd = 1;
  }

  if (meta & A_ONCHIP_FIFO_MEM_CORE_EOP) {
   empty = (meta & A_ONCHIP_FIFO_MEM_CORE_EMPTY_MASK) >>
       A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT;
  }

  if (sop_rcvd == 0) {
   error = 1;
   break;
  }

  if (empty == 0) {
   *(uint32_t *)(desc->dst_addr + dst_offs) = data;
   dst_offs += 4;
  } else if (empty == 1) {
   *(uint16_t *)(desc->dst_addr + dst_offs) =
       ((data >> 16) & 0xffff);
   dst_offs += 2;

   *(uint8_t *)(desc->dst_addr + dst_offs) =
       ((data >> 8) & 0xff);
   dst_offs += 1;
  } else {
   panic("empty %d\n", empty);
  }

  if (meta & A_ONCHIP_FIFO_MEM_CORE_EOP)
   break;

  fill_level = softdma_fill_level(sc);
  timeout = 100;
  while (fill_level == 0 && timeout--)
   fill_level = softdma_fill_level(sc);
  if (timeout == 0) {

   error = 1;
   break;
  }
 }

 if (error) {
  return (-1);
 }

 return (dst_offs);
}
