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
struct twe_softc {int /*<<< orphan*/  twe_dev; } ;
struct twe_drive {int td_twe_unit; int td_type; int td_state; int /*<<< orphan*/ * td_disk; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  Giant ; 
 int TWE_PARAM_UNITSTATUS_MASK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct twe_drive*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct twe_softc*,char*,...) ; 
 int /*<<< orphan*/  twe_table_unitstate ; 
 int /*<<< orphan*/  twe_table_unittype ; 

int
FUNC9(struct twe_softc *sc, struct twe_drive *dr)
{
    char	buf[80];
    int		error;

    FUNC4(&Giant);
    dr->td_disk =  FUNC0(sc->twe_dev, NULL, -1);
    if (dr->td_disk == NULL) {
	FUNC5(&Giant);
	FUNC8(sc, "Cannot add unit\n");
	return (EIO);
    }
    FUNC3(dr->td_disk, dr);

    /* 
     * XXX It would make sense to test the online/initialising bits, but they seem to be
     * always set...
     */
    FUNC6(buf, "Unit %d, %s, %s",
	    dr->td_twe_unit,
	    FUNC7(twe_table_unittype, dr->td_type),
	    FUNC7(twe_table_unitstate, dr->td_state & TWE_PARAM_UNITSTATUS_MASK));
    FUNC2(dr->td_disk, buf);

    error = FUNC1(dr->td_disk);
    FUNC5(&Giant);
    if (error != 0) {
	FUNC8(sc, "Cannot attach unit to controller. error = %d\n", error);
	return (EIO);
    }
    return (0);
}