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
typedef  int /*<<< orphan*/  ig4iic_softc_t ;

/* Variables and functions */
 int IG4_I2C_ABORT ; 
 int IG4_I2C_ENABLE ; 
 int /*<<< orphan*/  IG4_INTR_STOP_DET ; 
 int IIC_ESTATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(ig4iic_softc_t *sc)
{
	int error;

	/* Request send of STOP condition and flush of TX FIFO */
	FUNC0(sc, IG4_I2C_ABORT | IG4_I2C_ENABLE);
	/*
	 * Wait for the TX_ABRT interrupt with ABRTSRC_TRANSFER
	 * bit set in TX_ABRT_SOURCE register.
	 */
	error = FUNC1(sc, IG4_INTR_STOP_DET);
	FUNC0(sc, IG4_I2C_ENABLE);

	return (error == IIC_ESTATUS ? 0 : error);
}