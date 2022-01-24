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
typedef  scalar_t__ u_int16_t ;
struct twe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ TWE_AEN_QUEUE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_PARAM_AEN ; 
 int /*<<< orphan*/  TWE_PARAM_AEN_UnitCode ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct twe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(struct twe_softc *sc)
{
    u_int16_t	aen;

    FUNC0(sc);
    for (;;) {
	if (FUNC2(sc, TWE_PARAM_AEN, TWE_PARAM_AEN_UnitCode, &aen))
	    return(1);
	if (aen == TWE_AEN_QUEUE_EMPTY)
	    return(0);
	FUNC1(sc, aen);
    }
}