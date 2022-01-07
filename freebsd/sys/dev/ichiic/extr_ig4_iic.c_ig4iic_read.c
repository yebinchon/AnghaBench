
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int txfifo_depth; int rxfifo_depth; } ;
struct TYPE_8__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ ig4iic_softc_t ;


 int IG4_DATA_COMMAND_RD ;
 int IG4_DATA_RESTART ;
 int IG4_DATA_STOP ;
 int IG4_FIFOLVL_MASK ;
 int IG4_FIFO_LOWAT ;
 int IG4_INTR_RX_FULL ;
 int IG4_INTR_TX_EMPTY ;
 int IG4_REG_DATA_CMD ;
 int IG4_REG_RXFLR ;
 int IG4_REG_TXFLR ;
 int MIN (int,int) ;
 int reg_read (TYPE_2__*,int ) ;
 int reg_write (TYPE_2__*,int ,int ) ;
 int wait_intr (TYPE_2__*,int ) ;

__attribute__((used)) static int
ig4iic_read(ig4iic_softc_t *sc, uint8_t *buf, uint16_t len,
    bool repeated_start, bool stop)
{
 uint32_t cmd;
 int requested = 0;
 int received = 0;
 int burst, target, lowat = 0;
 int error;

 if (len == 0)
  return (0);

 while (received < len) {
  burst = sc->cfg.txfifo_depth -
      (reg_read(sc, IG4_REG_TXFLR) & IG4_FIFOLVL_MASK);
  if (burst <= 0) {
   error = wait_intr(sc, IG4_INTR_TX_EMPTY);
   if (error)
    break;
   burst = sc->cfg.txfifo_depth;
  }

  burst = MIN(burst, sc->cfg.rxfifo_depth - lowat);
  target = MIN(requested + burst, (int)len);
  while (requested < target) {
   cmd = IG4_DATA_COMMAND_RD;
   if (repeated_start && requested == 0)
    cmd |= IG4_DATA_RESTART;
   if (stop && requested == len - 1)
    cmd |= IG4_DATA_STOP;
   reg_write(sc, IG4_REG_DATA_CMD, cmd);
   requested++;
  }

  lowat = 0;
  if (requested != len && requested - received > IG4_FIFO_LOWAT)
   lowat = IG4_FIFO_LOWAT;

  while (received < requested - lowat) {
   burst = MIN((int)len - received,
       reg_read(sc, IG4_REG_RXFLR) & IG4_FIFOLVL_MASK);
   if (burst > 0) {
    while (burst--)
     buf[received++] = 0xFF &
         reg_read(sc, IG4_REG_DATA_CMD);
   } else {
    error = wait_intr(sc, IG4_INTR_RX_FULL);
    if (error)
     goto out;
   }
  }
 }
out:
 return (error);
}
