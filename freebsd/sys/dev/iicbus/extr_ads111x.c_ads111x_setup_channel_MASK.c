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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ads111x_softc {int /*<<< orphan*/  dev; struct ads111x_channel* channels; } ;
struct ads111x_channel {int gainidx; int rateidx; int configured; } ;
typedef  int /*<<< orphan*/  chanstr ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RWTUN ; 
 int CTLFLAG_SKIP ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ads111x_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  ads111x_sysctl_gainidx ; 
 int /*<<< orphan*/  ads111x_sysctl_rateidx ; 
 int /*<<< orphan*/  ads111x_sysctl_voltage ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC6(struct ads111x_softc *sc, int chan, int gainidx, int rateidx)
{
	struct ads111x_channel *c;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *chantree, *devtree;
	char chanstr[4];

	c = &sc->channels[chan];
	c->gainidx = gainidx;
	c->rateidx = rateidx;

	/*
	 *  If setting up the channel for the first time, create channel's
	 *  sysctl entries.  We might have already configured the channel if
	 *  config data for it exists in both FDT and hints.
	 */

	if (c->configured)
		return;

	ctx = FUNC3(sc->dev);
	devtree = FUNC4(sc->dev);
	FUNC5(chanstr, sizeof(chanstr), "%d", chan);
	chantree = FUNC0(ctx, FUNC2(devtree), OID_AUTO,
	    chanstr, CTLFLAG_RD, NULL, "channel data");
	FUNC1(ctx, FUNC2(chantree), OID_AUTO,
	    "gain_index", CTLTYPE_INT | CTLFLAG_RWTUN, sc, chan,
	    ads111x_sysctl_gainidx, "I", "programmable gain amp setting, 0-7");
	FUNC1(ctx, FUNC2(chantree), OID_AUTO,
	    "rate_index", CTLTYPE_INT | CTLFLAG_RWTUN, sc, chan,
	    ads111x_sysctl_rateidx, "I", "sample rate setting, 0-7");
	FUNC1(ctx, FUNC2(chantree), OID_AUTO,
	    "voltage", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_SKIP, sc, chan,
	    ads111x_sysctl_voltage, "I", "sampled voltage in microvolts");

	c->configured = true;
}