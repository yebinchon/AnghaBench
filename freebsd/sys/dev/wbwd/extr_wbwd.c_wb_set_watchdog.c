
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_softc {unsigned int timeout_override; int reg_timeout; int reg_1; int reg_2; scalar_t__ debug_verbose; int time_reg; int dev; int ctl_reg; int csr_reg; } ;


 int EINVAL ;
 int WB_LDN8_CRF5_SCALE ;
 int WB_LDN8_CRF7_TS ;
 void* superio_read (int ,int ) ;
 int superio_write (int ,int ,int) ;
 int wb_print_state (struct wb_softc*,char*) ;

__attribute__((used)) static int
wb_set_watchdog(struct wb_softc *sc, unsigned int timeout)
{

 if (timeout != 0) {




  if (sc->timeout_override > 0)
   timeout = sc->timeout_override;


  if (timeout > 255 * 60)
   return (EINVAL);
 }

 if (sc->debug_verbose)
  wb_print_state(sc, "Before watchdog counter (re)load");

 if (timeout == 0) {

  sc->reg_timeout = 0;
  superio_write(sc->dev, sc->time_reg, sc->reg_timeout);

 } else {

  sc->reg_1 = superio_read(sc->dev, sc->ctl_reg);

  if (timeout > 255) {

   sc->reg_1 |= WB_LDN8_CRF5_SCALE;
   sc->reg_timeout = (timeout / 60);
   if (timeout % 60)
    sc->reg_timeout++;
  } else {

   sc->reg_1 &= ~WB_LDN8_CRF5_SCALE;
   sc->reg_timeout = timeout;
  }


  sc->reg_2 = superio_read(sc->dev, sc->csr_reg);
  if (sc->reg_2 & WB_LDN8_CRF7_TS) {
   sc->reg_2 &= ~WB_LDN8_CRF7_TS;
   superio_write(sc->dev, sc->csr_reg, sc->reg_2);
  }


  superio_write(sc->dev, sc->ctl_reg, sc->reg_1);


  superio_write(sc->dev, sc->time_reg, sc->reg_timeout);
 }

 if (sc->debug_verbose)
  wb_print_state(sc, "After watchdog counter (re)load");
 return (0);
}
