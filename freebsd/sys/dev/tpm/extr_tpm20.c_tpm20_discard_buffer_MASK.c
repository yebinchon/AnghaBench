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
struct tpm_sc {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  buf_cv; scalar_t__ pending_data_length; int /*<<< orphan*/  buf; int /*<<< orphan*/  discard_buffer_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct tpm_sc *sc;

	sc = (struct tpm_sc *)arg;
	if (FUNC0(&sc->discard_buffer_callout))
		return;

	FUNC4(&sc->dev_lock);

	FUNC3(sc->buf, 0, TPM_BUFSIZE);
	sc->pending_data_length = 0;

	FUNC1(&sc->buf_cv);
	FUNC5(&sc->dev_lock);

	FUNC2(sc->dev,
	    "User failed to read buffer in time\n");
}