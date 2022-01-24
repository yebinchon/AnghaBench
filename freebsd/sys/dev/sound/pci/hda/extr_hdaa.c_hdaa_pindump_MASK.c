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
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  widget_cap; } ;
struct TYPE_4__ {int cap; int /*<<< orphan*/  config; } ;
struct TYPE_5__ {TYPE_1__ pin; } ;
struct hdaa_widget {scalar_t__ type; TYPE_3__ param; int /*<<< orphan*/  nid; TYPE_2__ wclass; } ;
struct hdaa_devinfo {int startnode; int endnode; int /*<<< orphan*/  gpio_cap; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HDA_CMD_GET_PIN_SENSE_ELD_VALID ; 
 int HDA_CMD_GET_PIN_SENSE_PRESENCE_DETECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 struct hdaa_devinfo* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC21 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC22 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC23 (struct hdaa_widget*,int /*<<< orphan*/ ) ; 
 struct hdaa_widget* FUNC24 (struct hdaa_devinfo*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 

__attribute__((used)) static void
FUNC26(device_t dev)
{
	struct hdaa_devinfo *devinfo = FUNC17(dev);
	struct hdaa_widget *w;
	uint32_t res, pincap, delay;
	int i;

	FUNC18(dev, "Dumping AFG pins:\n");
	FUNC18(dev, "nid   0x    as seq "
	    "device       conn  jack    loc        color   misc\n");
	for (i = devinfo->startnode; i < devinfo->endnode; i++) {
		w = FUNC24(devinfo, i);
		if (w == NULL || w->type !=
		    HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
			continue;
		FUNC23(w, w->wclass.pin.config);
		pincap = w->wclass.pin.cap;
		FUNC18(dev, "    Caps: %2s %3s %2s %4s %4s",
		    FUNC12(pincap)?"IN":"",
		    FUNC13(pincap)?"OUT":"",
		    FUNC10(pincap)?"HP":"",
		    FUNC9(pincap)?"EAPD":"",
		    FUNC16(pincap)?"VREF":"");
		if (FUNC11(pincap) ||
		    FUNC14(pincap)) {
			if (FUNC15(pincap)) {
				delay = 0;
				FUNC19(dev,
				    FUNC2(0, w->nid, 0));
				do {
					res = FUNC19(dev,
					    FUNC1(0, w->nid));
					if (res != 0x7fffffff && res != 0xffffffff)
						break;
					FUNC0(10);
				} while (++delay < 10000);
			} else {
				delay = 0;
				res = FUNC19(dev, FUNC1(0,
				    w->nid));
			}
			FUNC25(" Sense: 0x%08x (%sconnected%s)", res,
			    (res & HDA_CMD_GET_PIN_SENSE_PRESENCE_DETECT) ?
			     "" : "dis",
			    (FUNC3(w->param.widget_cap) &&
			     (res & HDA_CMD_GET_PIN_SENSE_ELD_VALID)) ?
			      ", ELD valid" : "");
			if (delay > 0)
				FUNC25(" delay %dus", delay * 10);
		}
		FUNC25("\n");
	}
	FUNC18(dev,
	    "NumGPIO=%d NumGPO=%d NumGPI=%d GPIWake=%d GPIUnsol=%d\n",
	    FUNC7(devinfo->gpio_cap),
	    FUNC8(devinfo->gpio_cap),
	    FUNC6(devinfo->gpio_cap),
	    FUNC5(devinfo->gpio_cap),
	    FUNC4(devinfo->gpio_cap));
	FUNC20(devinfo);
	FUNC21(devinfo);
	FUNC22(devinfo);
}