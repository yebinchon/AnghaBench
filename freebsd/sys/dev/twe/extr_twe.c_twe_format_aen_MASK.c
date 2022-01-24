#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
struct twe_softc {char* twe_aen_buf; int /*<<< orphan*/ * twe_dev; TYPE_1__* twe_drive; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * td_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  bootverbose ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twe_table_aen ; 

__attribute__((used)) static char *
FUNC5(struct twe_softc *sc, u_int16_t aen)
{
    device_t	child;
    char	*code, *msg;

    code = FUNC4(twe_table_aen, FUNC0(aen));
    msg = code + 2;

    switch (*code) {
    case 'q':
	if (!bootverbose)
	    return(NULL);
	/* FALLTHROUGH */
    case 'a':
	return(msg);

    case 'c':
	if ((child = sc->twe_drive[FUNC1(aen)].td_disk) != NULL) {
	    FUNC3(sc->twe_aen_buf, sizeof(sc->twe_aen_buf), "twed%d: %s",
		FUNC2(child), msg);
	} else {
	    FUNC3(sc->twe_aen_buf, sizeof(sc->twe_aen_buf),
		"twe%d: %s for unknown unit %d", FUNC2(sc->twe_dev),
		msg, FUNC1(aen));
	}
	return(sc->twe_aen_buf);

    case 'p':
	FUNC3(sc->twe_aen_buf, sizeof(sc->twe_aen_buf),
	    "twe%d: port %d: %s", FUNC2(sc->twe_dev),
	    FUNC1(aen), msg);
	return(sc->twe_aen_buf);

	
    case 'x':
    default:
	break;
    }
    FUNC3(sc->twe_aen_buf, sizeof(sc->twe_aen_buf), "unknown AEN 0x%x", aen);
    return(sc->twe_aen_buf);
}