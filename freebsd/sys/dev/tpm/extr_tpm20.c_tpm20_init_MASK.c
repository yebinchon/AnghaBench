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
struct tpm_sc {int harvest_ticks; int /*<<< orphan*/  sc_cdev; scalar_t__ pending_data_length; int /*<<< orphan*/  harvest_callout; int /*<<< orphan*/  discard_buffer_callout; int /*<<< orphan*/  buf_cv; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  buf; } ;
struct make_dev_args {struct tpm_sc* mda_si_drv1; int /*<<< orphan*/  mda_mode; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_devsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  M_TPM20 ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  TPM_BUFSIZE ; 
 int /*<<< orphan*/  TPM_CDEV_NAME ; 
 int /*<<< orphan*/  TPM_CDEV_PERM_FLAG ; 
 int TPM_HARVEST_INTERVAL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct make_dev_args*) ; 
 int FUNC4 (struct make_dev_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int tick ; 
 int /*<<< orphan*/  tpm20_cdevsw ; 
 int /*<<< orphan*/  tpm20_harvest ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_sc*) ; 

int
FUNC8(struct tpm_sc *sc)
{
	struct make_dev_args args;
	int result;

	sc->buf = FUNC5(TPM_BUFSIZE, M_TPM20, M_WAITOK);
	FUNC6(&sc->dev_lock, "TPM driver lock");
	FUNC2(&sc->buf_cv, "TPM buffer cv");
	FUNC0(&sc->discard_buffer_callout, 1);
#ifdef TPM_HARVEST
	sc->harvest_ticks = TPM_HARVEST_INTERVAL / tick;
	callout_init(&sc->harvest_callout, 1);
	callout_reset(&sc->harvest_callout, 0, tpm20_harvest, sc);
#endif
	sc->pending_data_length = 0;

	FUNC3(&args);
	args.mda_devsw = &tpm20_cdevsw;
	args.mda_uid = UID_ROOT;
	args.mda_gid = GID_WHEEL;
	args.mda_mode = TPM_CDEV_PERM_FLAG;
	args.mda_si_drv1 = sc;
	result = FUNC4(&args, &sc->sc_cdev, TPM_CDEV_NAME);
	if (result != 0)
		FUNC7(sc);

	return (result);

}