
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int txfifo_depth; } ;
struct TYPE_8__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ ig4iic_softc_t ;


 int IG4_DATA_RESTART ;
 int IG4_DATA_STOP ;
 int IG4_FIFOLVL_MASK ;
 int IG4_FIFO_LOWAT ;
 int IG4_INTR_TX_EMPTY ;
 int IG4_REG_DATA_CMD ;
 int IG4_REG_TXFLR ;
 int IG4_REG_TX_TL ;
 int MIN (int,int) ;
 int reg_read (TYPE_2__*,int ) ;
 int reg_write (TYPE_2__*,int ,int ) ;
 int wait_intr (TYPE_2__*,int ) ;

__attribute__((used)) static int
ig4iic_write(ig4iic_softc_t *sc, uint8_t *buf, uint16_t len,
    bool repeated_start, bool stop)
{
 uint32_t cmd;
 int sent = 0;
 int burst, target;
 int error;
 bool lowat_set = 0;

 if (len == 0)
  return (0);

 while (sent < len) {
  burst = sc->cfg.txfifo_depth -
      (reg_read(sc, IG4_REG_TXFLR) & IG4_FIFOLVL_MASK);
  target = MIN(sent + burst, (int)len);

  if (!lowat_set && target != len) {
   lowat_set = 1;
   reg_write(sc, IG4_REG_TX_TL, IG4_FIFO_LOWAT);
  }
  while(sent < target) {
   cmd = buf[sent];
   if (repeated_start && sent == 0)
    cmd |= IG4_DATA_RESTART;
   if (stop && sent == len - 1)
    cmd |= IG4_DATA_STOP;
   reg_write(sc, IG4_REG_DATA_CMD, cmd);
   sent++;
  }
  if (sent < len) {
   error = wait_intr(sc, IG4_INTR_TX_EMPTY);
   if (error)
    break;
  }
 }
 if (lowat_set)
  reg_write(sc, IG4_REG_TX_TL, 0);

 return (error);
}
