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
struct nge_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NGE_CSR ; 
 int NGE_CSR_RX_DISABLE ; 
 int NGE_CSR_RX_ENABLE ; 
 int NGE_CSR_TX_DISABLE ; 
 int NGE_CSR_TX_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct nge_softc*) ; 
 int NGE_TIMEOUT ; 

__attribute__((used)) static int
FUNC4(struct nge_softc *sc)
{
	uint32_t reg;
	int i;

	FUNC3(sc);

	reg = FUNC0(sc, NGE_CSR);
	if ((reg & (NGE_CSR_TX_ENABLE | NGE_CSR_RX_ENABLE)) != 0) {
		reg &= ~(NGE_CSR_TX_ENABLE | NGE_CSR_RX_ENABLE);
		reg |= NGE_CSR_TX_DISABLE | NGE_CSR_RX_DISABLE;
		FUNC1(sc, NGE_CSR, reg);
		for (i = 0; i < NGE_TIMEOUT; i++) {
			FUNC2(1);
			if ((FUNC0(sc, NGE_CSR) &
			    (NGE_CSR_RX_ENABLE | NGE_CSR_TX_ENABLE)) == 0)
				break;
		}
		if (i == NGE_TIMEOUT)
			return (ETIMEDOUT);
	}

	return (0);
}