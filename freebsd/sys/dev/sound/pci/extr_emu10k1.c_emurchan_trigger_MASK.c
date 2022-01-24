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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_rchinfo {int run; int /*<<< orphan*/  irqmask; int /*<<< orphan*/  setupreg; int /*<<< orphan*/  sizereg; int /*<<< orphan*/  spd; int /*<<< orphan*/  fmt; int /*<<< orphan*/  num; struct sc_info* parent; } ;
struct sc_info {int bufsz; int /*<<< orphan*/  lock; int /*<<< orphan*/  audigy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMU_ADCCR_LCHANENABLE ; 
 int /*<<< orphan*/  EMU_ADCCR_RCHANENABLE ; 
 int /*<<< orphan*/  EMU_A_ADCCR_LCHANENABLE ; 
 int /*<<< orphan*/  EMU_A_ADCCR_RCHANENABLE ; 
 int /*<<< orphan*/  EMU_INTE ; 
 int /*<<< orphan*/  EMU_RECBS_BUFSIZE_16384 ; 
 int /*<<< orphan*/  EMU_RECBS_BUFSIZE_32768 ; 
 int /*<<< orphan*/  EMU_RECBS_BUFSIZE_4096 ; 
 int /*<<< orphan*/  EMU_RECBS_BUFSIZE_65536 ; 
 int /*<<< orphan*/  EMU_RECBS_BUFSIZE_8192 ; 
#define  PCMTRIG_ABORT 132 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  PCMTRIG_EMLDMARD 131 
#define  PCMTRIG_EMLDMAWR 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(kobj_t obj, void *data, int go)
{
	struct sc_rchinfo *ch = data;
	struct sc_info *sc = ch->parent;
	u_int32_t val, sz;

	if (!FUNC1(go))
		return 0;

	switch(sc->bufsz) {
	case 4096:
		sz = EMU_RECBS_BUFSIZE_4096;
		break;

	case 8192:
		sz = EMU_RECBS_BUFSIZE_8192;
		break;

	case 16384:
		sz = EMU_RECBS_BUFSIZE_16384;
		break;

	case 32768:
		sz = EMU_RECBS_BUFSIZE_32768;
		break;

	case 65536:
		sz = EMU_RECBS_BUFSIZE_65536;
		break;

	default:
		sz = EMU_RECBS_BUFSIZE_4096;
	}

	FUNC7(sc->lock);
	switch(go) {
	case PCMTRIG_START:
		ch->run = 1;
		FUNC6(sc, 0, ch->sizereg, sz);
		if (ch->num == 0) {
			if (sc->audigy) {
				val = EMU_A_ADCCR_LCHANENABLE;
				if (FUNC0(ch->fmt) > 1)
					val |= EMU_A_ADCCR_RCHANENABLE;
				val |= FUNC2(ch->spd);
			} else {
				val = EMU_ADCCR_LCHANENABLE;
				if (FUNC0(ch->fmt) > 1)
					val |= EMU_ADCCR_RCHANENABLE;
				val |= FUNC4(ch->spd);
			}

			FUNC6(sc, 0, ch->setupreg, 0);
			FUNC6(sc, 0, ch->setupreg, val);
		}
		val = FUNC3(sc, EMU_INTE, 4);
		val |= ch->irqmask;
		FUNC5(sc, EMU_INTE, val, 4);
		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		ch->run = 0;
		FUNC6(sc, 0, ch->sizereg, 0);
		if (ch->setupreg)
			FUNC6(sc, 0, ch->setupreg, 0);
		val = FUNC3(sc, EMU_INTE, 4);
		val &= ~ch->irqmask;
		FUNC5(sc, EMU_INTE, val, 4);
		break;

	case PCMTRIG_EMLDMAWR:
	case PCMTRIG_EMLDMARD:
	default:
		break;
	}
	FUNC8(sc->lock);

	return 0;
}