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
struct xbd_softc {int xbd_flags; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int XBDF_BARRIER ; 
 int XBDF_DISCARD ; 
 int XBDF_FLUSH ; 
 int XBDF_PERSISTENT ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*) ; 

__attribute__((used)) static int
FUNC4(struct xbd_softc *sc, char *features, size_t len)
{
	struct sbuf sb;
	int feature_cnt;

	FUNC2(&sb, features, len, SBUF_FIXEDLEN);

	feature_cnt = 0;
	if ((sc->xbd_flags & XBDF_FLUSH) != 0) {
		FUNC3(&sb, "flush");
		feature_cnt++;
	}

	if ((sc->xbd_flags & XBDF_BARRIER) != 0) {
		if (feature_cnt != 0)
			FUNC3(&sb, ", ");
		FUNC3(&sb, "write_barrier");
		feature_cnt++;
	}

	if ((sc->xbd_flags & XBDF_DISCARD) != 0) {
		if (feature_cnt != 0)
			FUNC3(&sb, ", ");
		FUNC3(&sb, "discard");
		feature_cnt++;
	}

	if ((sc->xbd_flags & XBDF_PERSISTENT) != 0) {
		if (feature_cnt != 0)
			FUNC3(&sb, ", ");
		FUNC3(&sb, "persistent_grants");
		feature_cnt++;
	}

	(void) FUNC0(&sb);
	return (FUNC1(&sb));
}