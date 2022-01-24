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
typedef  int u_int32_t ;
struct twe_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct twe_softc*) ; 
 int TWE_STATUS_ATTENTION_INTERRUPT ; 
 int TWE_STATUS_COMMAND_INTERRUPT ; 
 int TWE_STATUS_HOST_INTERRUPT ; 
 int TWE_STATUS_RESPONSE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct twe_softc*) ; 

void
FUNC7(struct twe_softc *sc)
{
    u_int32_t		status_reg;

    FUNC1(4);

    /*
     * Collect current interrupt status.
     */
    status_reg = FUNC0(sc);
    FUNC3(sc, status_reg);

    /*
     * Dispatch based on interrupt status
     */
    if (status_reg & TWE_STATUS_HOST_INTERRUPT)
	FUNC6(sc);
    if (status_reg & TWE_STATUS_ATTENTION_INTERRUPT)
	FUNC2(sc);
    if (status_reg & TWE_STATUS_COMMAND_INTERRUPT)
	FUNC4(sc);
    if (status_reg & TWE_STATUS_RESPONSE_INTERRUPT)
	FUNC5(sc, 1);
}