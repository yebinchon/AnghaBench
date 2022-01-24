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
struct uaudio_softc {struct uaudio_mixer_node* sc_mixer_root; } ;
struct uaudio_mixer_node {int nchan; char* name; int /*<<< orphan*/  desc; int /*<<< orphan*/  maxval; int /*<<< orphan*/  minval; int /*<<< orphan*/ * wValue; struct uaudio_mixer_node* next; } ;
struct sysctl_oid {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct uaudio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int,...) ; 
 int /*<<< orphan*/  uaudio_mixer_sysctl_handler ; 

__attribute__((used)) static void
FUNC8(struct uaudio_softc *sc, device_t dev)
{
	struct uaudio_mixer_node *pmc;
	struct sysctl_oid *mixer_tree;
	struct sysctl_oid *control_tree;
	char buf[32];
	int chan;
	int n;

	mixer_tree = FUNC1(FUNC5(dev),
	    FUNC4(FUNC6(dev)), OID_AUTO, "mixer",
	    CTLFLAG_RD, NULL, "");

	if (mixer_tree == NULL)
		return;

	for (n = 0, pmc = sc->sc_mixer_root; pmc != NULL;
	    pmc = pmc->next, n++) {

		for (chan = 0; chan < pmc->nchan; chan++) {

			if (pmc->nchan > 1) {
				FUNC7(buf, sizeof(buf), "%s_%d_%d",
				    pmc->name, n, chan);
			} else {
				FUNC7(buf, sizeof(buf), "%s_%d",
				    pmc->name, n);
			}

			control_tree = FUNC1(FUNC5(dev),
			    FUNC4(mixer_tree), OID_AUTO, buf,
			    CTLFLAG_RD, NULL, "Mixer control nodes");

			if (control_tree == NULL)
				continue;

			FUNC2(FUNC5(dev),
			    FUNC4(control_tree),
			    OID_AUTO, "val", CTLTYPE_INT | CTLFLAG_RWTUN, sc,
			    pmc->wValue[chan],
			    uaudio_mixer_sysctl_handler, "I", "Current value");

			FUNC0(FUNC5(dev),
			    FUNC4(control_tree),
			    OID_AUTO, "min", CTLFLAG_RD, 0, pmc->minval,
			    "Minimum value");

			FUNC0(FUNC5(dev),
			    FUNC4(control_tree),
			    OID_AUTO, "max", CTLFLAG_RD, 0, pmc->maxval,
			    "Maximum value");

			FUNC3(FUNC5(dev),
			    FUNC4(control_tree),
			    OID_AUTO, "desc", CTLFLAG_RD, pmc->desc, 0,
			    "Description");
		}
	}
}