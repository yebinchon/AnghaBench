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
typedef  int u_long ;
struct thread {int dummy; } ;
struct smapi_softc {int /*<<< orphan*/  smapi32_entry; int /*<<< orphan*/  header; } ;
struct smapi_bios_parameter {int dummy; } ;
struct smapi_bios_header {int dummy; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
 int ENXIO ; 
#define  SMAPIOCGFUNCTION 129 
#define  SMAPIOGHEADER 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*) ; 
 struct smapi_softc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smapi_bios_parameter*,struct smapi_bios_parameter*) ; 
 int /*<<< orphan*/  smapi32_offset ; 
 int /*<<< orphan*/  smapi_devclass ; 

__attribute__((used)) static int
FUNC4 (struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
	struct smapi_softc *sc;
	int error;

	error = 0;
	sc = FUNC2(smapi_devclass, FUNC1(dev)); 
        if (sc == NULL) {
                error = ENXIO;
                goto fail;
        }

	switch (cmd) {
	case SMAPIOGHEADER:
		FUNC0((caddr_t)sc->header, data,
				sizeof(struct smapi_bios_header)); 
		error = 0;
		break;
	case SMAPIOCGFUNCTION:
		smapi32_offset = sc->smapi32_entry;
		error = FUNC3((struct smapi_bios_parameter *)data,
				(struct smapi_bios_parameter *)data);
		break;
	default:
		error = ENOTTY;
	}

fail:
	return (error);
}