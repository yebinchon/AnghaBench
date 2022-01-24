#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  channel; } ;
struct atiixp_info {scalar_t__ polling; int codec_not_ready_bits; TYPE_2__ rch; TYPE_1__ pch; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATI_IXP_CHN_RUNNING ; 
 int /*<<< orphan*/  ATI_REG_IER ; 
 int /*<<< orphan*/  ATI_REG_ISR ; 
 int ATI_REG_ISR_IN_STATUS ; 
 int ATI_REG_ISR_IN_XRUN ; 
 int ATI_REG_ISR_OUT_STATUS ; 
 int ATI_REG_ISR_OUT_XRUN ; 
 int CODEC_CHECK_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct atiixp_info*) ; 
 int FUNC1 (struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct atiixp_info*) ; 

__attribute__((used)) static void
FUNC7(void *p)
{
	struct atiixp_info *sc = p;
	uint32_t status, enable, detected_codecs;
	uint32_t trigger = 0;

	FUNC0(sc);
	if (sc->polling != 0) {
		FUNC2(sc);
		return;
	}
	status = FUNC1(sc, ATI_REG_ISR);

	if (status == 0) {
		FUNC2(sc);
		return;
	}

	if ((status & ATI_REG_ISR_OUT_STATUS) &&
	    (sc->pch.flags & ATI_IXP_CHN_RUNNING))
		trigger |= 1;
	if ((status & ATI_REG_ISR_IN_STATUS) &&
	    (sc->rch.flags & ATI_IXP_CHN_RUNNING))
		trigger |= 2;

#if 0
	if (status & ATI_REG_ISR_IN_XRUN) {
		device_printf(sc->dev,
			"Recieve IN XRUN interrupt\n");
	}
	if (status & ATI_REG_ISR_OUT_XRUN) {
		device_printf(sc->dev,
			"Recieve OUT XRUN interrupt\n");
	}
#endif

	if (status & CODEC_CHECK_BITS) {
		/* mark missing codecs as not ready */
		detected_codecs = status & CODEC_CHECK_BITS;
		sc->codec_not_ready_bits |= detected_codecs;

		/* disable detected interrupt sources */
		enable  = FUNC1(sc, ATI_REG_IER);
		enable &= ~detected_codecs;
		FUNC3(sc, ATI_REG_IER, enable);
		FUNC6(sc);
	}

	/* acknowledge */
	FUNC3(sc, ATI_REG_ISR, status);
	FUNC2(sc);

	if (trigger & 1)
		FUNC4(sc->pch.channel);
	if (trigger & 2)
		FUNC4(sc->rch.channel);
}