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
struct TYPE_6__ {int widget_cap; scalar_t__ outamp_cap; scalar_t__ inamp_cap; int /*<<< orphan*/  eapdbtl; int /*<<< orphan*/  supp_pcm_size_rate; int /*<<< orphan*/  supp_stream_formats; } ;
struct TYPE_4__ {int /*<<< orphan*/  stripecap; } ;
struct TYPE_5__ {TYPE_1__ conv; } ;
struct hdaa_widget {scalar_t__ enable; char* name; int bindas; scalar_t__ ossmask; size_t ossdev; scalar_t__ type; int nconns; int* conns; scalar_t__* connsenable; int selconn; TYPE_3__ param; scalar_t__ waspin; int /*<<< orphan*/  bindseqmask; TYPE_2__ wclass; int /*<<< orphan*/  nid; } ;
struct hdaa_devinfo {scalar_t__ inamp_cap; scalar_t__ outamp_cap; int startnode; int endnode; int /*<<< orphan*/  dev; int /*<<< orphan*/  supp_pcm_size_rate; int /*<<< orphan*/  supp_stream_formats; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_INVALID ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_OUTPUT ; 
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hdaa_widget*) ; 
 struct hdaa_widget* FUNC15 (struct hdaa_devinfo*,int) ; 
 char** ossnames ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static void
FUNC17(struct hdaa_devinfo *devinfo)
{
	struct hdaa_widget *w, *cw;
	char buf[64];
	int i, j;

	FUNC9(devinfo->dev, "\n");
	FUNC9(devinfo->dev, "Default parameters:\n");
	FUNC13(devinfo->dev,
	    devinfo->supp_stream_formats,
	    devinfo->supp_pcm_size_rate);
	FUNC12(devinfo->dev, devinfo->inamp_cap, " Input");
	FUNC12(devinfo->dev, devinfo->outamp_cap, "Output");
	for (i = devinfo->startnode; i < devinfo->endnode; i++) {
		w = FUNC15(devinfo, i);
		if (w == NULL) {
			FUNC9(devinfo->dev, "Ghost widget nid=%d\n", i);
			continue;
		}
		FUNC9(devinfo->dev, "\n");
		FUNC9(devinfo->dev, "            nid: %d%s\n", w->nid,
		    (w->enable == 0) ? " [DISABLED]" : "");
		FUNC9(devinfo->dev, "           Name: %s\n", w->name);
		FUNC9(devinfo->dev, "     Widget cap: 0x%08x",
		    w->param.widget_cap);
		if (w->param.widget_cap & 0x0ee1) {
			if (FUNC3(w->param.widget_cap))
			    FUNC16(" LRSWAP");
			if (FUNC5(w->param.widget_cap))
			    FUNC16(" PWR");
			if (FUNC1(w->param.widget_cap))
			    FUNC16(" DIGITAL");
			if (FUNC8(w->param.widget_cap))
			    FUNC16(" UNSOL");
			if (FUNC6(w->param.widget_cap))
			    FUNC16(" PROC");
			if (FUNC7(w->param.widget_cap))
			    FUNC16(" STRIPE(x%d)",
				1 << (FUNC10(w->wclass.conv.stripecap) - 1));
			j = FUNC0(w->param.widget_cap);
			if (j == 1)
			    FUNC16(" STEREO");
			else if (j > 1)
			    FUNC16(" %dCH", j + 1);
		}
		FUNC16("\n");
		if (w->bindas != -1) {
			FUNC9(devinfo->dev, "    Association: %d (0x%04x)\n",
			    w->bindas, w->bindseqmask);
		}
		if (w->ossmask != 0 || w->ossdev >= 0) {
			FUNC9(devinfo->dev, "            OSS: %s",
			    FUNC11(w->ossmask, buf, sizeof(buf)));
			if (w->ossdev >= 0)
			    FUNC16(" (%s)", ossnames[w->ossdev]);
			FUNC16("\n");
		}
		if (w->type == HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_OUTPUT ||
		    w->type == HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT) {
			FUNC13(devinfo->dev,
			    w->param.supp_stream_formats,
			    w->param.supp_pcm_size_rate);
		} else if (w->type ==
		    HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX || w->waspin)
			FUNC14(w);
		if (w->param.eapdbtl != HDA_INVALID)
			FUNC9(devinfo->dev, "           EAPD: 0x%08x\n",
			    w->param.eapdbtl);
		if (FUNC4(w->param.widget_cap) &&
		    w->param.outamp_cap != 0)
			FUNC12(devinfo->dev, w->param.outamp_cap, "Output");
		if (FUNC2(w->param.widget_cap) &&
		    w->param.inamp_cap != 0)
			FUNC12(devinfo->dev, w->param.inamp_cap, " Input");
		if (w->nconns > 0)
			FUNC9(devinfo->dev, "    Connections: %d\n", w->nconns);
		for (j = 0; j < w->nconns; j++) {
			cw = FUNC15(devinfo, w->conns[j]);
			FUNC9(devinfo->dev, "          + %s<- nid=%d [%s]",
			    (w->connsenable[j] == 0)?"[DISABLED] ":"",
			    w->conns[j], (cw == NULL) ? "GHOST!" : cw->name);
			if (cw == NULL)
				FUNC16(" [UNKNOWN]");
			else if (cw->enable == 0)
				FUNC16(" [DISABLED]");
			if (w->nconns > 1 && w->selconn == j && w->type !=
			    HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER)
				FUNC16(" (selected)");
			FUNC16("\n");
		}
	}

}