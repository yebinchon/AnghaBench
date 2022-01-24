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
struct hdaa_widget {scalar_t__ enable; scalar_t__ type; int unsol; int /*<<< orphan*/  nid; } ;
struct hdaa_devinfo {int startnode; int endnode; int /*<<< orphan*/  dev; int /*<<< orphan*/  poll_jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdaa_widget* FUNC5 (struct hdaa_devinfo*,int) ; 

__attribute__((used)) static void
FUNC6(struct hdaa_devinfo *devinfo)
{
	struct hdaa_widget *w;
	int i;

	FUNC2(&devinfo->poll_jack);
	for (i = devinfo->startnode; i < devinfo->endnode; i++) {
		w = FUNC5(devinfo, i);
		if (w == NULL || w->enable == 0 || w->type !=
		    HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
			continue;
		if (w->unsol < 0)
			continue;
		FUNC4(devinfo->dev,
		    FUNC1(0, w->nid, 0));
		FUNC0(
		    FUNC3(devinfo->dev), devinfo->dev,
		    w->unsol);
		w->unsol = -1;
	}
}