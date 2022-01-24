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
struct twe_softc {int /*<<< orphan*/ * twe_immediate; } ;
struct twe_request {scalar_t__ tr_status; int /*<<< orphan*/  tr_length; int /*<<< orphan*/ * tr_data; int /*<<< orphan*/  tr_flags; struct twe_softc* tr_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DFLTPHYS ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ TWE_CMD_BUSY ; 
 scalar_t__ TWE_CMD_COMPLETE ; 
 int /*<<< orphan*/  TWE_CMD_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*,int) ; 
 int FUNC4 (struct twe_request*) ; 

__attribute__((used)) static int
FUNC5(struct twe_request *tr, int usetmp)
{
    struct twe_softc *sc;
    int		error;
    int		count = 0;

    FUNC2(4);

    sc = tr->tr_sc;

    if (usetmp && (tr->tr_data != NULL)) {
	tr->tr_flags |= TWE_CMD_IMMEDIATE;
	if (tr->tr_length > DFLTPHYS)
	    return (EINVAL);
	FUNC1(tr->tr_data, sc->twe_immediate, tr->tr_length);
    }
    tr->tr_status = TWE_CMD_BUSY;
    if ((error = FUNC4(tr)) != 0)
	if (error != EBUSY)
	    return(error);

    /* Wait up to 5 seconds for the command to complete */
    while ((count++ < 5000) && (tr->tr_status == TWE_CMD_BUSY)){
	FUNC0(1000);
	FUNC3(sc, 1);
    }
    if (usetmp && (tr->tr_data != NULL))
	FUNC1(sc->twe_immediate, tr->tr_data, tr->tr_length);

    return(tr->tr_status != TWE_CMD_COMPLETE);
}