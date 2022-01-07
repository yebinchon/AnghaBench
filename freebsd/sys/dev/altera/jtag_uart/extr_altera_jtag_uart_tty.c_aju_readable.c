
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct altera_jtag_uart_softc {int* ajus_buffer_validp; int* ajus_buffer_datap; } ;


 int AJU_LOCK_ASSERT (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_DATA_DATA ;
 int ALTERA_JTAG_UART_DATA_RVALID ;
 int aju_data_read (struct altera_jtag_uart_softc*) ;

__attribute__((used)) static inline int
aju_readable(struct altera_jtag_uart_softc *sc)
{
 uint32_t v;

 AJU_LOCK_ASSERT(sc);

 if (*sc->ajus_buffer_validp)
  return (1);
 v = aju_data_read(sc);
 if ((v & ALTERA_JTAG_UART_DATA_RVALID) != 0) {
  *sc->ajus_buffer_validp = 1;
  *sc->ajus_buffer_datap = (v & ALTERA_JTAG_UART_DATA_DATA);
  return (1);
 }
 return (0);
}
