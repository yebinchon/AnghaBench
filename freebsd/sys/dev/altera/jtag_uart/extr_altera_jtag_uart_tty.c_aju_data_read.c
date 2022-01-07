
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct altera_jtag_uart_softc {int ajus_mem_res; } ;


 int ALTERA_JTAG_UART_DATA_OFF ;
 int bus_read_4 (int ,int ) ;
 int le32toh (int ) ;

__attribute__((used)) static inline uint32_t
aju_data_read(struct altera_jtag_uart_softc *sc)
{

 return (le32toh(bus_read_4(sc->ajus_mem_res,
     ALTERA_JTAG_UART_DATA_OFF)));
}
