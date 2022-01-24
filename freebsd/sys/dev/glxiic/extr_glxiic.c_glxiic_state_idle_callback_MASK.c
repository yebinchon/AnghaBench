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
typedef  int uint8_t ;
struct glxiic_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int GLXIIC_SMB_STS_BER_BIT ; 
 int GLXIIC_SMB_STS_NMATCH_BIT ; 
 int IIC_EBUSERR ; 
 int IIC_NOERR ; 
 int FUNC2 (struct glxiic_softc*,int) ; 

__attribute__((used)) static int
FUNC3(struct glxiic_softc *sc, uint8_t status)
{

	FUNC0(sc);

	if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
		FUNC1("bus error in idle");
		return (IIC_EBUSERR);
	}

	if ((status & GLXIIC_SMB_STS_NMATCH_BIT) != 0) {
		return (FUNC2(sc, status));
	}

	return (IIC_NOERR);
}