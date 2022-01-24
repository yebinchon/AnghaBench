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
struct tpm_sc {int /*<<< orphan*/ * sc_cdev; int /*<<< orphan*/  buf_cv; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/ * buf; int /*<<< orphan*/  harvest_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TPM20 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct tpm_sc *sc)
{

#ifdef TPM_HARVEST
	callout_drain(&sc->harvest_callout);
#endif

	if (sc->buf != NULL)
		FUNC3(sc->buf, M_TPM20);

	FUNC4(&sc->dev_lock);
	FUNC1(&sc->buf_cv);
	if (sc->sc_cdev != NULL)
		FUNC2(sc->sc_cdev);
}