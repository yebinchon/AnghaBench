#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int cap; int config; int ctrl; } ;
struct TYPE_8__ {TYPE_3__ pin; } ;
struct TYPE_6__ {int /*<<< orphan*/  widget_cap; } ;
struct hdaa_widget {TYPE_4__ wclass; TYPE_2__ param; TYPE_1__* devinfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE ; 
 int HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE ; 
 int HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE ; 
 int HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void
FUNC20(struct hdaa_widget *w)
{
	uint32_t pincap;

	pincap = w->wclass.pin.cap;

	FUNC18(w->devinfo->dev, "        Pin cap: 0x%08x", pincap);
	if (FUNC7(pincap))
		FUNC19(" ISC");
	if (FUNC11(pincap))
		FUNC19(" TRQD");
	if (FUNC10(pincap))
		FUNC19(" PDC");
	if (FUNC6(pincap))
		FUNC19(" HP");
	if (FUNC9(pincap))
		FUNC19(" OUT");
	if (FUNC8(pincap))
		FUNC19(" IN");
	if (FUNC1(pincap))
		FUNC19(" BAL");
	if (FUNC5(pincap))
		FUNC19(" HDMI");
	if (FUNC12(pincap)) {
		FUNC19(" VREF[");
		if (FUNC14(pincap))
			FUNC19(" 50");
		if (FUNC15(pincap))
			FUNC19(" 80");
		if (FUNC13(pincap))
			FUNC19(" 100");
		if (FUNC16(pincap))
			FUNC19(" GROUND");
		if (FUNC17(pincap))
			FUNC19(" HIZ");
		FUNC19(" ]");
	}
	if (FUNC3(pincap))
		FUNC19(" EAPD");
	if (FUNC2(pincap))
		FUNC19(" DP");
	if (FUNC4(pincap))
		FUNC19(" HBR");
	FUNC19("\n");
	FUNC18(w->devinfo->dev, "     Pin config: 0x%08x\n",
	    w->wclass.pin.config);
	FUNC18(w->devinfo->dev, "    Pin control: 0x%08x", w->wclass.pin.ctrl);
	if (w->wclass.pin.ctrl & HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE)
		FUNC19(" HP");
	if (w->wclass.pin.ctrl & HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE)
		FUNC19(" IN");
	if (w->wclass.pin.ctrl & HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE)
		FUNC19(" OUT");
	if (FUNC0(w->param.widget_cap)) {
		if ((w->wclass.pin.ctrl &
		    HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK) == 0x03)
			FUNC19(" HBR");
		else if ((w->wclass.pin.ctrl &
		    HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK) != 0)
			FUNC19(" EPTs");
	} else {
		if ((w->wclass.pin.ctrl &
		    HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK) != 0)
			FUNC19(" VREFs");
	}
	FUNC19("\n");
}