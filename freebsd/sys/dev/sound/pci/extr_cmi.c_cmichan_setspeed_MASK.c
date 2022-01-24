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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  lock; scalar_t__ spdif_enabled; } ;
struct sc_chinfo {scalar_t__ dir; int spd; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int CMPCI_REG_ADC_FS_MASK ; 
 int CMPCI_REG_ADC_FS_SHIFT ; 
 int CMPCI_REG_DAC_FS_MASK ; 
 int CMPCI_REG_DAC_FS_SHIFT ; 
 int /*<<< orphan*/  CMPCI_REG_FUNC_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC9(kobj_t obj, void *data, u_int32_t speed)
{
	struct sc_chinfo *ch = data;
	struct sc_info	*sc = ch->parent;
	u_int32_t r, rsp;

	r = FUNC4(speed);
	FUNC7(sc->lock);
	if (ch->dir == PCMDIR_PLAY) {
		if (speed < 44100) {
			/* disable if req before rate change */
			FUNC3(ch->parent, speed);
		}
		FUNC1(ch->parent,
				CMPCI_REG_FUNC_1,
				CMPCI_REG_DAC_FS_SHIFT,
				CMPCI_REG_DAC_FS_MASK,
				r);
		if (speed >= 44100 && ch->parent->spdif_enabled) {
			/* enable if req after rate change */
			FUNC3(ch->parent, speed);
		}
		rsp = FUNC2(ch->parent, CMPCI_REG_FUNC_1, 4);
		rsp >>= CMPCI_REG_DAC_FS_SHIFT;
		rsp &= 	CMPCI_REG_DAC_FS_MASK;
	} else {
		FUNC1(ch->parent,
				CMPCI_REG_FUNC_1,
				CMPCI_REG_ADC_FS_SHIFT,
				CMPCI_REG_ADC_FS_MASK,
				r);
		rsp = FUNC2(ch->parent, CMPCI_REG_FUNC_1, 4);
		rsp >>= CMPCI_REG_ADC_FS_SHIFT;
		rsp &= 	CMPCI_REG_ADC_FS_MASK;
	}
	FUNC8(sc->lock);
	ch->spd = FUNC5(r);

	FUNC0(FUNC6("cmichan_setspeed (%s) %d -> %d (%d)\n",
		   (ch->dir == PCMDIR_PLAY) ? "play" : "rec",
		   speed, ch->spd, FUNC5(rsp)));

	return ch->spd;
}