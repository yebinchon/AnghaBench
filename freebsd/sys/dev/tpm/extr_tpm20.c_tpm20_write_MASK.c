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
struct uio {size_t uio_resid; TYPE_1__* uio_td; } ;
struct tpm_sc {scalar_t__ pending_data_length; int (* transmit ) (struct tpm_sc*,size_t) ;int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  owner_tid; int /*<<< orphan*/  discard_buffer_callout; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_cv; int /*<<< orphan*/  dev; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_tid; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 size_t TPM_BUFSIZE ; 
 size_t TPM_HEADER_SIZE ; 
 int TPM_READ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct tpm_sc*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int tick ; 
 int /*<<< orphan*/  tpm20_discard_buffer ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t,struct uio*) ; 

int
FUNC7(struct cdev *dev, struct uio *uio, int flags)
{
	struct tpm_sc *sc;
	size_t byte_count;
	int result = 0;

	sc = (struct tpm_sc *)dev->si_drv1;

	byte_count = uio->uio_resid;
	if (byte_count < TPM_HEADER_SIZE) {
		FUNC2(sc->dev,
		    "Requested transfer is too small\n");
		return (EINVAL);
	}

	if (byte_count > TPM_BUFSIZE) {
		FUNC2(sc->dev,
		    "Requested transfer is too large\n");
		return (E2BIG);
	}

	FUNC4(&sc->dev_lock);

	while (sc->pending_data_length != 0)
		FUNC1(&sc->buf_cv, &sc->dev_lock);

	result = FUNC6(sc->buf, byte_count, uio);
	if (result != 0) {
		FUNC5(&sc->dev_lock);
		return (result);
	}

	result = sc->transmit(sc, byte_count);

	if (result == 0) {
		FUNC0(&sc->discard_buffer_callout,
		    TPM_READ_TIMEOUT / tick, tpm20_discard_buffer, sc);
		sc->owner_tid = uio->uio_td->td_tid;
	}

	FUNC5(&sc->dev_lock);
	return (result);
}