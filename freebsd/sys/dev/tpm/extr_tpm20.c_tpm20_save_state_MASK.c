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
typedef  int uint8_t ;
struct tpm_sc {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  (* transmit ) (struct tpm_sc*,int) ;int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  save_cmd ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct tpm_sc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_sc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, bool suspend)
{
	struct tpm_sc *sc;
	uint8_t save_cmd[] = {
		0x80, 0x01,             /* TPM_ST_NO_SESSIONS tag*/
		0x00, 0x00, 0x00, 0x0C, /* cmd length */
		0x00, 0x00, 0x01, 0x45, /* cmd TPM_CC_Shutdown */
		0x00, 0x00              /* TPM_SU_STATE */
	};

	sc = FUNC0(dev);

	/*
	 * Inform the TPM whether we are going to suspend or reboot/shutdown.
	 */
	if (suspend)
		save_cmd[11] = 1; /* TPM_SU_STATE */

	if (sc == NULL || sc->buf == NULL)
		return (0);

	FUNC3(&sc->dev_lock);

	FUNC1(sc->buf, save_cmd, sizeof(save_cmd));
	sc->transmit(sc, sizeof(save_cmd));

	FUNC4(&sc->dev_lock);

	return (0);
}