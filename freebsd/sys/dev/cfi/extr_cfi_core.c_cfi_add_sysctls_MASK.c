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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct cfi_softc {scalar_t__ sc_maxbuf; int /*<<< orphan*/ * sc_mto_counts; int /*<<< orphan*/ * sc_tto_counts; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 size_t CFI_TIMEOUT_BUFWRITE ; 
 size_t CFI_TIMEOUT_ERASE ; 
 size_t CFI_TIMEOUT_WRITE ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cfi_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *children;

	ctx = FUNC2(sc->sc_dev);
	children = FUNC1(FUNC3(sc->sc_dev));

	FUNC0(ctx, children, OID_AUTO,
	    "typical_erase_timout_count",
	    CTLFLAG_RD, &sc->sc_tto_counts[CFI_TIMEOUT_ERASE],
	    0, "Number of times the typical erase timeout was exceeded");
	FUNC0(ctx, children, OID_AUTO,
	    "max_erase_timout_count",
	    CTLFLAG_RD, &sc->sc_mto_counts[CFI_TIMEOUT_ERASE], 0,
	    "Number of times the maximum erase timeout was exceeded");
	FUNC0(ctx, children, OID_AUTO,
	    "typical_write_timout_count",
	    CTLFLAG_RD, &sc->sc_tto_counts[CFI_TIMEOUT_WRITE], 0,
	    "Number of times the typical write timeout was exceeded");
	FUNC0(ctx, children, OID_AUTO,
	    "max_write_timout_count",
	    CTLFLAG_RD, &sc->sc_mto_counts[CFI_TIMEOUT_WRITE], 0,
	    "Number of times the maximum write timeout was exceeded");
	if (sc->sc_maxbuf > 0) {
		FUNC0(ctx, children, OID_AUTO,
		    "typical_bufwrite_timout_count",
		    CTLFLAG_RD, &sc->sc_tto_counts[CFI_TIMEOUT_BUFWRITE], 0,
		    "Number of times the typical buffered write timeout was "
		    "exceeded");
		FUNC0(ctx, children, OID_AUTO,
		    "max_bufwrite_timout_count",
		    CTLFLAG_RD, &sc->sc_mto_counts[CFI_TIMEOUT_BUFWRITE], 0,
		    "Number of times the maximum buffered write timeout was "
		    "exceeded");
	}
}