#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct altera_jtag_uart_softc {int* ajus_buffer_validp; int* ajus_buffer_datap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int ALTERA_JTAG_UART_DATA_DATA ; 
 int ALTERA_JTAG_UART_DATA_RVALID ; 
 int FUNC1 (struct altera_jtag_uart_softc*) ; 

__attribute__((used)) static inline int
FUNC2(struct altera_jtag_uart_softc *sc)
{
	uint32_t v;

	FUNC0(sc);

	if (*sc->ajus_buffer_validp)
		return (1);
	v = FUNC1(sc);
	if ((v & ALTERA_JTAG_UART_DATA_RVALID) != 0) {
		*sc->ajus_buffer_validp = 1;
		*sc->ajus_buffer_datap = (v & ALTERA_JTAG_UART_DATA_DATA);
		return (1);
	}
	return (0);
}