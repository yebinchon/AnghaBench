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
typedef  int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_info {int /*<<< orphan*/  ai_status; int /*<<< orphan*/  ai_batt_life; int /*<<< orphan*/  ai_batt_stat; int /*<<< orphan*/  ai_acline; int /*<<< orphan*/  ai_minor; int /*<<< orphan*/  ai_major; } ;
struct apm_event_info {int type; int /*<<< orphan*/  index; } ;
struct apm_clone_data {int /*<<< orphan*/  notify_status; struct acpi_softc* acpi_sc; } ;
struct apm_bios_arg {int dummy; } ;
struct acpi_softc {int /*<<< orphan*/  acpi_next_sstate; int /*<<< orphan*/  acpi_standby_sx; int /*<<< orphan*/  acpi_suspend_sx; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  apm_pwstatus_t ;
typedef  struct apm_info* apm_info_t ;
typedef  TYPE_1__* apm_info_old_t ;
struct TYPE_2__ {int /*<<< orphan*/  ai_status; int /*<<< orphan*/  ai_batt_life; int /*<<< orphan*/  ai_batt_stat; int /*<<< orphan*/  ai_acline; int /*<<< orphan*/  ai_minor; int /*<<< orphan*/  ai_major; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_STATE_S3 ; 
 int /*<<< orphan*/  ACPI_STATE_S5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  APMIO_BIOS 139 
#define  APMIO_DISABLE 138 
#define  APMIO_DISPLAY 137 
#define  APMIO_ENABLE 136 
#define  APMIO_GETINFO 135 
#define  APMIO_GETINFO_OLD 134 
#define  APMIO_GETPWSTATUS 133 
#define  APMIO_HALTCPU 132 
#define  APMIO_NEXTEVENT 131 
#define  APMIO_NOTHALTCPU 130 
#define  APMIO_STANDBY 129 
#define  APMIO_SUSPEND 128 
 int /*<<< orphan*/  APM_EV_NONE ; 
 int /*<<< orphan*/  APM_EV_NOTIFIED ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENXIO ; 
 int EPERM ; 
 int FWRITE ; 
 int PMEV_STANDBYREQ ; 
 int PMEV_SUSPENDREQ ; 
 int /*<<< orphan*/  acpi ; 
 int FUNC2 (struct apm_clone_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct acpi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct apm_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int apm_active ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
	int	error;
	struct	apm_clone_data *clone;
	struct	acpi_softc *acpi_sc;
	struct	apm_info info;
	struct 	apm_event_info *ev_info;
	apm_info_old_t aiop;

	error = 0;
	FUNC7((void **)&clone);
	acpi_sc = clone->acpi_sc;

	switch (cmd) {
	case APMIO_SUSPEND:
		if ((flag & FWRITE) == 0)
			return (EPERM);
		if (acpi_sc->acpi_next_sstate == 0) {
			if (acpi_sc->acpi_suspend_sx != ACPI_STATE_S5) {
				error = FUNC3(acpi_sc,
				    acpi_sc->acpi_suspend_sx);
			} else {
				FUNC8(
			"power off via apm suspend not supported\n");
				error = ENXIO;
			}
		} else
			error = FUNC2(clone, 0);
		break;
	case APMIO_STANDBY:
		if ((flag & FWRITE) == 0)
			return (EPERM);
		if (acpi_sc->acpi_next_sstate == 0) {
			if (acpi_sc->acpi_standby_sx != ACPI_STATE_S5) {
				error = FUNC3(acpi_sc,
				    acpi_sc->acpi_standby_sx);
			} else {
				FUNC8(
			"power off via apm standby not supported\n");
				error = ENXIO;
			}
		} else
			error = FUNC2(clone, 0);
		break;
	case APMIO_NEXTEVENT:
		FUNC8("apm nextevent start\n");
		FUNC0(acpi);
		if (acpi_sc->acpi_next_sstate != 0 && clone->notify_status ==
		    APM_EV_NONE) {
			ev_info = (struct apm_event_info *)addr;
			if (acpi_sc->acpi_next_sstate <= ACPI_STATE_S3)
				ev_info->type = PMEV_STANDBYREQ;
			else
				ev_info->type = PMEV_SUSPENDREQ;
			ev_info->index = 0;
			clone->notify_status = APM_EV_NOTIFIED;
			FUNC8("apm event returning %d\n", ev_info->type);
		} else
			error = EAGAIN;
		FUNC1(acpi);
		break;
	case APMIO_GETINFO_OLD:
		if (FUNC4(&info))
			error = ENXIO;
		aiop = (apm_info_old_t)addr;
		aiop->ai_major = info.ai_major;
		aiop->ai_minor = info.ai_minor;
		aiop->ai_acline = info.ai_acline;
		aiop->ai_batt_stat = info.ai_batt_stat;
		aiop->ai_batt_life = info.ai_batt_life;
		aiop->ai_status = info.ai_status;
		break;
	case APMIO_GETINFO:
		if (FUNC4((apm_info_t)addr))
			error = ENXIO;
		break;
	case APMIO_GETPWSTATUS:
		if (FUNC5((apm_pwstatus_t)addr))
			error = ENXIO;
		break;
	case APMIO_ENABLE:
		if ((flag & FWRITE) == 0)
			return (EPERM);
		apm_active = 1;
		break;
	case APMIO_DISABLE:
		if ((flag & FWRITE) == 0)
			return (EPERM);
		apm_active = 0;
		break;
	case APMIO_HALTCPU:
		break;
	case APMIO_NOTHALTCPU:
		break;
	case APMIO_DISPLAY:
		if ((flag & FWRITE) == 0)
			return (EPERM);
		break;
	case APMIO_BIOS:
		if ((flag & FWRITE) == 0)
			return (EPERM);
		FUNC6(addr, sizeof(struct apm_bios_arg));
		break;
	default:
		error = EINVAL;
		break;
	}

	return (error);
}