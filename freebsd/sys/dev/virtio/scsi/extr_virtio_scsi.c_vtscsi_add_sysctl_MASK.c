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
struct vtscsi_statistics {int /*<<< orphan*/  dequeue_no_requests; int /*<<< orphan*/  scsi_cmd_timeouts; } ;
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_debug; struct vtscsi_statistics vtscsi_stats; int /*<<< orphan*/  vtscsi_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vtscsi_softc *sc)
{
	device_t dev;
	struct vtscsi_statistics *stats;
        struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	dev = sc->vtscsi_dev;
	stats = &sc->vtscsi_stats;
	ctx = FUNC3(dev);
	tree = FUNC4(dev);
	child = FUNC2(tree);

	FUNC0(ctx, child, OID_AUTO, "debug_level",
	    CTLFLAG_RW, &sc->vtscsi_debug, 0,
	    "Debug level");

	FUNC1(ctx, child, OID_AUTO, "scsi_cmd_timeouts",
	    CTLFLAG_RD, &stats->scsi_cmd_timeouts,
	    "SCSI command timeouts");
	FUNC1(ctx, child, OID_AUTO, "dequeue_no_requests",
	    CTLFLAG_RD, &stats->dequeue_no_requests,
	    "No available requests to dequeue");
}