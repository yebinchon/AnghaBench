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
struct amr_softc {int amr_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AMR_STATE_OPEN ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct amr_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct amr_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
    struct amr_softc	*sc = FUNC3(dev);
    int			error;

    FUNC2(1);

    if (sc->amr_state & AMR_STATE_OPEN)
	return(EBUSY);

    if ((error = FUNC1(dev)))
	return(error);

    FUNC0(sc);

    return(0);
}