
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct altera_jtag_uart_softc {int ajus_mem_res; } ;


 int ALTERA_JTAG_UART_DATA_OFF ;
 int bus_write_4 (int ,int ,int ) ;
 int htole32 (int ) ;

__attribute__((used)) static inline void
aju_data_write(struct altera_jtag_uart_softc *sc, uint32_t v)
{

 bus_write_4(sc->ajus_mem_res, ALTERA_JTAG_UART_DATA_OFF, htole32(v));
}
