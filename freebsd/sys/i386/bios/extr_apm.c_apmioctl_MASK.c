#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int eax; int /*<<< orphan*/  edi; int /*<<< orphan*/  esi; int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  ebx; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
struct apm_softc {scalar_t__ initialized; int event_count; int event_ptr; struct apm_event_info* event_list; TYPE_2__ bios; int /*<<< orphan*/  active; } ;
struct apm_info {int /*<<< orphan*/  ai_status; int /*<<< orphan*/  ai_batt_life; int /*<<< orphan*/  ai_batt_stat; int /*<<< orphan*/  ai_acline; int /*<<< orphan*/  ai_minor; int /*<<< orphan*/  ai_major; } ;
struct apm_event_info {int dummy; } ;
struct apm_bios_arg {int eax; int /*<<< orphan*/  edi; int /*<<< orphan*/  esi; int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  ebx; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  apm_pwstatus_t ;
typedef  struct apm_info* apm_info_t ;
typedef  TYPE_3__* apm_info_old_t ;
struct TYPE_6__ {int /*<<< orphan*/  ai_status; int /*<<< orphan*/  ai_batt_life; int /*<<< orphan*/  ai_batt_stat; int /*<<< orphan*/  ai_acline; int /*<<< orphan*/  ai_minor; int /*<<< orphan*/  ai_major; } ;

/* Variables and functions */
 scalar_t__ APMDEV_CTL ; 
#define  APMIO_BIOS 140 
#define  APMIO_DISABLE 139 
#define  APMIO_DISPLAY 138 
#define  APMIO_ENABLE 137 
#define  APMIO_GETINFO 136 
#define  APMIO_GETINFO_OLD 135 
#define  APMIO_GETPWSTATUS 134 
#define  APMIO_HALTCPU 133 
#define  APMIO_NEXTEVENT 132 
#define  APMIO_NOTHALTCPU 131 
#define  APMIO_REJECTLASTREQ 130 
#define  APMIO_STANDBY 129 
#define  APMIO_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int APM_NEVENTS ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENXIO ; 
 int EPERM ; 
 int FWRITE ; 
 int /*<<< orphan*/  PMST_STANDBY ; 
 int /*<<< orphan*/  PMST_SUSPEND ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct apm_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct apm_softc apm_softc ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct cdev*) ; 

__attribute__((used)) static int
FUNC12(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
	struct apm_softc *sc = &apm_softc;
	struct apm_bios_arg *args;
	int error = 0;
	int ret;
	int newstate;

	if (sc == NULL || sc->initialized == 0)
		return (ENXIO);

	FUNC0("APM ioctl: cmd = 0x%lx\n", cmd);
	switch (cmd) {
	case APMIO_SUSPEND:
		if (!(flag & FWRITE))
			return (EPERM);
		if (sc->active)
			FUNC10(PMST_SUSPEND);
		else
			error = EINVAL;
		break;

	case APMIO_STANDBY:
		if (!(flag & FWRITE))
			return (EPERM);
		if (sc->active)
			FUNC10(PMST_STANDBY);
		else
			error = EINVAL;
		break;

	case APMIO_GETINFO_OLD:
		{
			struct apm_info info;
			apm_info_old_t aiop;

			if (FUNC5(&info))
				error = ENXIO;
			aiop = (apm_info_old_t)addr;
			aiop->ai_major = info.ai_major;
			aiop->ai_minor = info.ai_minor;
			aiop->ai_acline = info.ai_acline;
			aiop->ai_batt_stat = info.ai_batt_stat;
			aiop->ai_batt_life = info.ai_batt_life;
			aiop->ai_status = info.ai_status;
		}
		break;
	case APMIO_GETINFO:
		if (FUNC5((apm_info_t)addr))
			error = ENXIO;
		break;
	case APMIO_GETPWSTATUS:
		if (FUNC6((apm_pwstatus_t)addr))
			error = ENXIO;
		break;
	case APMIO_ENABLE:
		if (!(flag & FWRITE))
			return (EPERM);
		FUNC4();
		break;
	case APMIO_DISABLE:
		if (!(flag & FWRITE))
			return (EPERM);
		FUNC3();
		break;
	case APMIO_HALTCPU:
		if (!(flag & FWRITE))
			return (EPERM);
		FUNC7();
		break;
	case APMIO_NOTHALTCPU:
		if (!(flag & FWRITE))
			return (EPERM);
		FUNC9();
		break;
	case APMIO_DISPLAY:
		if (!(flag & FWRITE))
			return (EPERM);
		newstate = *(int *)addr;
		if (FUNC2(newstate))
			error = ENXIO;
		break;
	case APMIO_BIOS:
		if (!(flag & FWRITE))
			return (EPERM);
		/* XXX compatibility with the old interface */
		args = (struct apm_bios_arg *)addr;
		sc->bios.r.eax = args->eax;
		sc->bios.r.ebx = args->ebx;
		sc->bios.r.ecx = args->ecx;
		sc->bios.r.edx = args->edx;
		sc->bios.r.esi = args->esi;
		sc->bios.r.edi = args->edi;
		if ((ret = FUNC1())) {
			/*
			 * Return code 1 means bios call was unsuccessful.
			 * Error code is stored in %ah.
			 * Return code -1 means bios call was unsupported
			 * in the APM BIOS version.
			 */
			if (ret == -1) {
				error = EINVAL;
			}
		} else {
			/*
			 * Return code 0 means bios call was successful.
			 * We need only %al and can discard %ah.
			 */
			sc->bios.r.eax &= 0xff;
		}
		args->eax = sc->bios.r.eax;
		args->ebx = sc->bios.r.ebx;
		args->ecx = sc->bios.r.ecx;
		args->edx = sc->bios.r.edx;
		args->esi = sc->bios.r.esi;
		args->edi = sc->bios.r.edi;
		break;
	default:
		error = EINVAL;
		break;
	}

	/* for /dev/apmctl */
	if (FUNC11(dev) == APMDEV_CTL) {
		struct apm_event_info *evp;
		int i;

		error = 0;
		switch (cmd) {
		case APMIO_NEXTEVENT:
			if (!sc->event_count) {
				error = EAGAIN;
			} else {
				evp = (struct apm_event_info *)addr;
				i = sc->event_ptr + APM_NEVENTS - sc->event_count;
				i %= APM_NEVENTS;
				*evp = sc->event_list[i];
				sc->event_count--;
			}
			break;
		case APMIO_REJECTLASTREQ:
			if (FUNC8()) {
				error = EINVAL;
			}
			break;
		default:
			error = EINVAL;
			break;
		}
	}

	return error;
}