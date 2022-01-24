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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
struct TYPE_4__ {TYPE_1__ pin; } ;
struct hdaa_widget {scalar_t__ type; TYPE_2__ wclass; } ;
struct hdaa_devinfo {int startnode; int endnode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdaa_widget*,int /*<<< orphan*/ ) ; 
 struct hdaa_widget* FUNC2 (struct hdaa_devinfo*,int) ; 

__attribute__((used)) static void
FUNC3(struct hdaa_devinfo *devinfo)
{
	struct hdaa_widget *w;
	int i;

	FUNC0(devinfo->dev, "nid   0x    as seq "
	    "device       conn  jack    loc        color   misc\n");
	for (i = devinfo->startnode; i < devinfo->endnode; i++) {
		w = FUNC2(devinfo, i);
		if (w == NULL)
			continue;
		if (w->type != HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
			continue;
		FUNC1(w, w->wclass.pin.config);
	}
}