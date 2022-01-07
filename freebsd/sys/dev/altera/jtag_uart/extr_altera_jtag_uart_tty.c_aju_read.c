
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag_uart_softc {char* ajus_buffer_datap; scalar_t__* ajus_buffer_validp; } ;


 int AJU_LOCK_ASSERT (struct altera_jtag_uart_softc*) ;
 int aju_readable (struct altera_jtag_uart_softc*) ;

__attribute__((used)) static char
aju_read(struct altera_jtag_uart_softc *sc)
{

 AJU_LOCK_ASSERT(sc);

 while (!aju_readable(sc));
 *sc->ajus_buffer_validp = 0;
 return (*sc->ajus_buffer_datap);
}
