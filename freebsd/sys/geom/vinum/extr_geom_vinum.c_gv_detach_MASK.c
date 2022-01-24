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
struct gv_softc {int dummy; } ;
struct gv_sd {int dummy; } ;
typedef  struct gv_sd gv_plex ;
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_DETACH_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_DETACH_SD ; 
#define  GV_TYPE_PLEX 129 
#define  GV_TYPE_SD 128 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct gctl_req*,char*,int) ; 
 struct gv_sd* FUNC3 (struct gv_softc*,char*) ; 
 struct gv_sd* FUNC4 (struct gv_softc*,char*) ; 
 int FUNC5 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_sd*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct gv_softc *sc, struct gctl_req *req)
{
	struct gv_plex *p;
	struct gv_sd *s;
	int *flags, type;
	char *object;

	object = FUNC1(req, "object", NULL);
	if (object == NULL) {
		FUNC0(req, "no argument given");
		return;
	}

	flags = FUNC2(req, "flags", sizeof(*flags));
	type = FUNC5(sc, object);
	switch (type) {
	case GV_TYPE_PLEX:
		p = FUNC3(sc, object);
		FUNC6(sc, GV_EVENT_DETACH_PLEX, p, NULL, *flags, 0);
		break;
	case GV_TYPE_SD:
		s = FUNC4(sc, object);
		FUNC6(sc, GV_EVENT_DETACH_SD, s, NULL, *flags, 0);
		break;
	default:
		FUNC0(req, "invalid object type");
		break;
	}
}