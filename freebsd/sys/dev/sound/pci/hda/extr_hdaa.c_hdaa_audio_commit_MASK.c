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
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ eapdbtl; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_5__ {TYPE_1__ pin; } ;
struct hdaa_widget {int selconn; scalar_t__ nconns; scalar_t__ type; int /*<<< orphan*/  nid; TYPE_3__ param; TYPE_2__ wclass; scalar_t__ waspin; } ;
struct hdaa_devinfo {int nodecnt; int quirks; int /*<<< orphan*/  dev; struct hdaa_widget* widget; } ;

/* Variables and functions */
 int HDAA_QUIRK_EAPDINV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HDA_INVALID ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdaa_widget*,int) ; 

__attribute__((used)) static void
FUNC7(struct hdaa_devinfo *devinfo)
{
	struct hdaa_widget *w;
	int i;

	/* Commit controls. */
	FUNC3(devinfo);

	/* Commit selectors, pins and EAPD. */
	for (i = 0; i < devinfo->nodecnt; i++) {
		w = &devinfo->widget[i];
		if (w == NULL)
			continue;
		if (w->selconn == -1)
			w->selconn = 0;
		if (w->nconns > 0)
			FUNC6(w, w->selconn);
		if (w->type == HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ||
		    w->waspin) {
			FUNC2(devinfo->dev,
			    FUNC1(0, w->nid,
			    w->wclass.pin.ctrl));
		}
		if (w->param.eapdbtl != HDA_INVALID) {
			uint32_t val;

			val = w->param.eapdbtl;
			if (devinfo->quirks &
			    HDAA_QUIRK_EAPDINV)
				val ^= HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD;
			FUNC2(devinfo->dev,
			    FUNC0(0, w->nid,
			    val));
		}
	}

	FUNC4(devinfo);
	FUNC5(devinfo);
}