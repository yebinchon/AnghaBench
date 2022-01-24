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
typedef  int /*<<< orphan*/  uint32_t ;
struct sbuf {int dummy; } ;
struct TYPE_5__ {int ctrl; int /*<<< orphan*/  config; int /*<<< orphan*/  cap; } ;
struct TYPE_6__ {TYPE_2__ pin; } ;
struct TYPE_4__ {int /*<<< orphan*/  widget_cap; } ;
struct hdaa_widget {TYPE_3__ wclass; TYPE_1__ param; } ;

/* Variables and functions */
 int HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE ; 
 int HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE ; 
 int HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE ; 
 int HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK ; 
 int /*<<< orphan*/ * HDA_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * HDA_CONNECTORS ; 
 int /*<<< orphan*/ * HDA_CONNS ; 
 int /*<<< orphan*/ * HDA_DEVS ; 
 int /*<<< orphan*/ * HDA_LOCS ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC27(struct sbuf *sb, struct hdaa_widget *w)
{
	uint32_t pincap, conf;

	pincap = w->wclass.pin.cap;

	FUNC26(sb, "        Pin cap: 0x%08x", pincap);
	if (FUNC15(pincap))
		FUNC26(sb, " ISC");
	if (FUNC19(pincap))
		FUNC26(sb, " TRQD");
	if (FUNC18(pincap))
		FUNC26(sb, " PDC");
	if (FUNC14(pincap))
		FUNC26(sb, " HP");
	if (FUNC17(pincap))
		FUNC26(sb, " OUT");
	if (FUNC16(pincap))
		FUNC26(sb, " IN");
	if (FUNC9(pincap))
		FUNC26(sb, " BAL");
	if (FUNC13(pincap))
		FUNC26(sb, " HDMI");
	if (FUNC20(pincap)) {
		FUNC26(sb, " VREF[");
		if (FUNC22(pincap))
			FUNC26(sb, " 50");
		if (FUNC23(pincap))
			FUNC26(sb, " 80");
		if (FUNC21(pincap))
			FUNC26(sb, " 100");
		if (FUNC24(pincap))
			FUNC26(sb, " GROUND");
		if (FUNC25(pincap))
			FUNC26(sb, " HIZ");
		FUNC26(sb, " ]");
	}
	if (FUNC11(pincap))
		FUNC26(sb, " EAPD");
	if (FUNC10(pincap))
		FUNC26(sb, " DP");
	if (FUNC12(pincap))
		FUNC26(sb, " HBR");
	FUNC26(sb, "\n");
	conf = w->wclass.pin.config;
	FUNC26(sb, "     Pin config: 0x%08x", conf);
	FUNC26(sb, " as=%d seq=%d "
	    "device=%s conn=%s ctype=%s loc=%s color=%s misc=%d\n",
	    FUNC0(conf),
	    FUNC7(conf),
	    HDA_DEVS[FUNC4(conf)],
	    HDA_CONNS[FUNC3(conf)],
	    HDA_CONNECTORS[FUNC2(conf)],
	    HDA_LOCS[FUNC5(conf)],
	    HDA_COLORS[FUNC1(conf)],
	    FUNC6(conf));
	FUNC26(sb, "    Pin control: 0x%08x", w->wclass.pin.ctrl);
	if (w->wclass.pin.ctrl & HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE)
		FUNC26(sb, " HP");
	if (w->wclass.pin.ctrl & HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE)
		FUNC26(sb, " IN");
	if (w->wclass.pin.ctrl & HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE)
		FUNC26(sb, " OUT");
	if (FUNC8(w->param.widget_cap)) {
		if ((w->wclass.pin.ctrl &
		    HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK) == 0x03)
			FUNC26(sb, " HBR");
		else if ((w->wclass.pin.ctrl &
		    HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK) != 0)
			FUNC26(sb, " EPTs");
	} else {
		if ((w->wclass.pin.ctrl &
		    HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK) != 0)
			FUNC26(sb, " VREFs");
	}
	FUNC26(sb, "\n");
}