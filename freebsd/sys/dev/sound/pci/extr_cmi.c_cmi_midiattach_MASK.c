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
struct sc_info {int /*<<< orphan*/  mpu_intr; int /*<<< orphan*/  mpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPCI_REG_FUNC_1 ; 
 int /*<<< orphan*/  CMPCI_REG_LEGACY_CTRL ; 
 int CMPCI_REG_UART_ENABLE ; 
 int CMPCI_REG_VMPUSEL_MASK ; 
 int CMPCI_REG_VMPUSEL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmi_intr ; 
 int /*<<< orphan*/  cmi_mpu_class ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct sc_info *sc) {
/*
	const struct {
		int port,bits;
	} *p, ports[] = { 
		{0x330,0}, 
		{0x320,1}, 
		{0x310,2}, 
		{0x300,3}, 
		{0,0} } ;
	Notes, CMPCI_REG_VMPUSEL sets the io port for the mpu.  Does
	anyone know how to bus_space tag?
*/
	FUNC0(sc, CMPCI_REG_FUNC_1, CMPCI_REG_UART_ENABLE);
	FUNC0(sc, CMPCI_REG_LEGACY_CTRL, 
			CMPCI_REG_VMPUSEL_MASK << CMPCI_REG_VMPUSEL_SHIFT);
	FUNC1(sc, CMPCI_REG_LEGACY_CTRL, 
			0 << CMPCI_REG_VMPUSEL_SHIFT );
	FUNC1(sc, CMPCI_REG_FUNC_1, CMPCI_REG_UART_ENABLE);
	sc->mpu = FUNC2(&cmi_mpu_class, sc, cmi_intr, &sc->mpu_intr);
}