#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
struct twe_softc {struct twe_drive* twe_drive; } ;
struct twe_drive {int td_size; int td_heads; int td_sectors; int td_cylinders; int td_twe_unit; int /*<<< orphan*/  td_stripe; int /*<<< orphan*/  td_type; int /*<<< orphan*/  td_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  stripe_size; int /*<<< orphan*/  configuration; } ;
struct TYPE_5__ {int* data; } ;
typedef  TYPE_1__ TWE_Param ;
typedef  TYPE_2__ TWE_Array_Descriptor ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int TWE_MAX_UNITS ; 
 int TWE_PARAM_UNITINFO ; 
 int /*<<< orphan*/  TWE_PARAM_UNITINFO_Capacity ; 
 int /*<<< orphan*/  TWE_PARAM_UNITINFO_Descriptor ; 
 int /*<<< orphan*/  TWE_PARAM_UNITINFO_DescriptorSize ; 
 int /*<<< orphan*/  TWE_PARAM_UNITINFO_Status ; 
 int TWE_PARAM_UNITSTATUS_Online ; 
 int TWE_PARAM_UNITSUMMARY ; 
 int /*<<< orphan*/  TWE_PARAM_UNITSUMMARY_Status ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct twe_softc*,struct twe_drive*) ; 
 TYPE_1__* FUNC5 (struct twe_softc*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct twe_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct twe_softc*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct twe_softc*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct twe_softc*,char*,...) ; 

__attribute__((used)) static int
FUNC10(struct twe_softc *sc, int unit)
{
    struct twe_drive		*dr;
    int				table, error = 0;
    u_int16_t			dsize;
    TWE_Param			*drives = NULL, *param = NULL;
    TWE_Array_Descriptor	*ud;

    FUNC0(sc);
    if (unit < 0 || unit > TWE_MAX_UNITS)
	return (EINVAL);

    /*
     * The controller is in a safe state, so try to find drives attached to it.
     */
    FUNC1(sc);
    if ((drives = FUNC5(sc, TWE_PARAM_UNITSUMMARY, TWE_PARAM_UNITSUMMARY_Status,
				TWE_MAX_UNITS, NULL)) == NULL) {
	FUNC2(sc);
	FUNC9(sc, "can't detect attached units\n");
	return (EIO);
    }

    dr = &sc->twe_drive[unit];
    /* check that the drive is online */
    if (!(drives->data[unit] & TWE_PARAM_UNITSTATUS_Online)) {
	FUNC2(sc);
	error = ENXIO;
	goto out;
    }

    table = TWE_PARAM_UNITINFO + unit;

    if (FUNC8(sc, table, TWE_PARAM_UNITINFO_Capacity, &dr->td_size)) {
	FUNC2(sc);
	FUNC9(sc, "error fetching capacity for unit %d\n", unit);
	error = EIO;
	goto out;
    }
    if (FUNC6(sc, table, TWE_PARAM_UNITINFO_Status, &dr->td_state)) {
	FUNC2(sc);
	FUNC9(sc, "error fetching state for unit %d\n", unit);
	error = EIO;
	goto out;
    }
    if (FUNC7(sc, table, TWE_PARAM_UNITINFO_DescriptorSize, &dsize)) {
	FUNC2(sc);
	FUNC9(sc, "error fetching descriptor size for unit %d\n", unit);
	error = EIO;
	goto out;
    }
    if ((param = FUNC5(sc, table, TWE_PARAM_UNITINFO_Descriptor, dsize - 3, NULL)) == NULL) {
	FUNC2(sc);
	FUNC9(sc, "error fetching descriptor for unit %d\n", unit);
	error = EIO;
	goto out;
    }
    ud = (TWE_Array_Descriptor *)param->data;
    dr->td_type = ud->configuration;
    dr->td_stripe = ud->stripe_size;

    /* build synthetic geometry as per controller internal rules */
    if (dr->td_size > 0x200000) {
	dr->td_heads = 255;
	dr->td_sectors = 63;
    } else {
	dr->td_heads = 64;
	dr->td_sectors = 32;
    }
    dr->td_cylinders = dr->td_size / (dr->td_heads * dr->td_sectors);
    dr->td_twe_unit = unit;
    FUNC2(sc);

    error = FUNC4(sc, dr);

out:
    if (param != NULL)
	FUNC3(param, M_DEVBUF);
    if (drives != NULL)
	FUNC3(drives, M_DEVBUF);
    return (error);
}