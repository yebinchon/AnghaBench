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
typedef  char* u_int ;
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct TYPE_3__ {struct g_geom* ds_geom; } ;
struct g_mirror_softc {int sc_mediasize; int sc_type; scalar_t__ sc_flags; scalar_t__ sc_ndisks; scalar_t__ sc_state; int /*<<< orphan*/  sc_balance; scalar_t__ sc_slice; int /*<<< orphan*/  sc_genid; int /*<<< orphan*/  sc_syncid; scalar_t__ sc_id; TYPE_1__ sc_sync; } ;
struct TYPE_4__ {int ds_offset; int /*<<< orphan*/  ds_syncid; } ;
struct g_mirror_disk {scalar_t__ d_state; scalar_t__ d_flags; int /*<<< orphan*/  d_priority; int /*<<< orphan*/  d_genid; TYPE_2__ d_sync; scalar_t__ d_id; } ;
struct g_geom {struct g_mirror_softc* softc; } ;
struct g_consumer {struct g_mirror_disk* private; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  G_MIRROR_DEVICE_FLAG_NOAUTOSYNC ; 
 int /*<<< orphan*/  G_MIRROR_DEVICE_FLAG_NOFAILSYNC ; 
 scalar_t__ G_MIRROR_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_BROKEN ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_DIRTY ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_FORCE_SYNC ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_HARDCODED ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_INACTIVE ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_SYNCHRONIZING ; 
 int /*<<< orphan*/  G_MIRROR_DISK_STATE_ACTIVE ; 
 scalar_t__ G_MIRROR_DISK_STATE_SYNCHRONIZING ; 
#define  G_MIRROR_TYPE_AUTOMATIC 129 
#define  G_MIRROR_TYPE_MANUAL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct g_mirror_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC7(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_mirror_softc *sc;

	FUNC4();

	sc = gp->softc;
	if (sc == NULL)
		return;
	/* Skip synchronization geom. */
	if (gp == sc->sc_sync.ds_geom)
		return;
	if (pp != NULL) {
		/* Nothing here. */
	} else if (cp != NULL) {
		struct g_mirror_disk *disk;

		disk = cp->private;
		if (disk == NULL)
			return;
		FUNC6(sb, "%s<ID>%u</ID>\n", indent, (u_int)disk->d_id);
		if (disk->d_state == G_MIRROR_DISK_STATE_SYNCHRONIZING) {
			FUNC6(sb, "%s<Synchronized>", indent);
			if (disk->d_sync.ds_offset == 0)
				FUNC5(sb, "0%");
			else
				FUNC6(sb, "%u%%",
				    (u_int)((disk->d_sync.ds_offset * 100) /
				    sc->sc_mediasize));
			FUNC5(sb, "</Synchronized>\n");
			if (disk->d_sync.ds_offset > 0)
				FUNC6(sb, "%s<BytesSynced>%jd"
				    "</BytesSynced>\n", indent,
				    (intmax_t)disk->d_sync.ds_offset);
		}
		FUNC6(sb, "%s<SyncID>%u</SyncID>\n", indent,
		    disk->d_sync.ds_syncid);
		FUNC6(sb, "%s<GenID>%u</GenID>\n", indent,
		    disk->d_genid);
		FUNC6(sb, "%s<Flags>", indent);
		if (disk->d_flags == 0)
			FUNC5(sb, "NONE");
		else {
			int first = 1;

#define	ADD_FLAG(flag, name)	do {					\
	if ((disk->d_flags & (flag)) != 0) {				\
		if (!first)						\
			sbuf_cat(sb, ", ");				\
		else							\
			first = 0;					\
		sbuf_cat(sb, name);					\
	}								\
} while (0)
			ADD_FLAG(G_MIRROR_DISK_FLAG_DIRTY, "DIRTY");
			ADD_FLAG(G_MIRROR_DISK_FLAG_HARDCODED, "HARDCODED");
			ADD_FLAG(G_MIRROR_DISK_FLAG_INACTIVE, "INACTIVE");
			ADD_FLAG(G_MIRROR_DISK_FLAG_SYNCHRONIZING,
			    "SYNCHRONIZING");
			ADD_FLAG(G_MIRROR_DISK_FLAG_FORCE_SYNC, "FORCE_SYNC");
			ADD_FLAG(G_MIRROR_DISK_FLAG_BROKEN, "BROKEN");
#undef	ADD_FLAG
		}
		FUNC5(sb, "</Flags>\n");
		FUNC6(sb, "%s<Priority>%u</Priority>\n", indent,
		    disk->d_priority);
		FUNC6(sb, "%s<State>%s</State>\n", indent,
		    FUNC2(disk->d_state));
	} else {
		FUNC6(sb, "%s<Type>", indent);
		switch (sc->sc_type) {
		case G_MIRROR_TYPE_AUTOMATIC:
			FUNC5(sb, "AUTOMATIC");
			break;
		case G_MIRROR_TYPE_MANUAL:
			FUNC5(sb, "MANUAL");
			break;
		default:
			FUNC5(sb, "UNKNOWN");
			break;
		}
		FUNC5(sb, "</Type>\n");
		FUNC6(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
		FUNC6(sb, "%s<SyncID>%u</SyncID>\n", indent, sc->sc_syncid);
		FUNC6(sb, "%s<GenID>%u</GenID>\n", indent, sc->sc_genid);
		FUNC6(sb, "%s<Flags>", indent);
		if (sc->sc_flags == 0)
			FUNC5(sb, "NONE");
		else {
			int first = 1;

#define	ADD_FLAG(flag, name)	do {					\
	if ((sc->sc_flags & (flag)) != 0) {				\
		if (!first)						\
			sbuf_cat(sb, ", ");				\
		else							\
			first = 0;					\
		sbuf_cat(sb, name);					\
	}								\
} while (0)
			ADD_FLAG(G_MIRROR_DEVICE_FLAG_NOFAILSYNC, "NOFAILSYNC");
			ADD_FLAG(G_MIRROR_DEVICE_FLAG_NOAUTOSYNC, "NOAUTOSYNC");
#undef	ADD_FLAG
		}
		FUNC5(sb, "</Flags>\n");
		FUNC6(sb, "%s<Slice>%u</Slice>\n", indent,
		    (u_int)sc->sc_slice);
		FUNC6(sb, "%s<Balance>%s</Balance>\n", indent,
		    FUNC1(sc->sc_balance));
		FUNC6(sb, "%s<Components>%u</Components>\n", indent,
		    sc->sc_ndisks);
		FUNC6(sb, "%s<State>", indent);
		if (sc->sc_state == G_MIRROR_DEVICE_STATE_STARTING)
			FUNC6(sb, "%s", "STARTING");
		else if (sc->sc_ndisks ==
		    FUNC3(sc, G_MIRROR_DISK_STATE_ACTIVE))
			FUNC6(sb, "%s", "COMPLETE");
		else
			FUNC6(sb, "%s", "DEGRADED");
		FUNC5(sb, "</State>\n");
	}
}