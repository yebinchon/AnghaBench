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
struct intelspi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int FUNC1 (struct intelspi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTELSPI_SSPREG_SSSR ; 
 int SSSR_TNF ; 

__attribute__((used)) static int
FUNC2(struct intelspi_softc *sc)
{
	uint32_t sssr;

	FUNC0(sc);

	sssr = FUNC1(sc, INTELSPI_SSPREG_SSSR);
	if (sssr & SSSR_TNF)
		return (0);

	return (1);
}