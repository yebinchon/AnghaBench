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
struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
typedef  struct gv_volume gv_sd ;
typedef  struct gv_volume gv_plex ;
struct gctl_req {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_ATTACH_PLEX ; 
 int /*<<< orphan*/  GV_EVENT_ATTACH_SD ; 
#define  GV_TYPE_PLEX 129 
#define  GV_TYPE_SD 128 
 int GV_TYPE_VOL ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct gctl_req*,char*,int) ; 
 struct gv_volume* FUNC3 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC4 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC5 (struct gv_softc*,char*) ; 
 int FUNC6 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_volume*,struct gv_volume*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct gv_softc *sc, struct gctl_req *req)
{
	struct gv_volume *v;
	struct gv_plex *p;
	struct gv_sd *s;
	off_t *offset;
	int *rename, type_child, type_parent;
	char *child, *parent;

	child = FUNC1(req, "child", NULL);
	if (child == NULL) {
		FUNC0(req, "no child given");
		return;
	}
	parent = FUNC1(req, "parent", NULL);
	if (parent == NULL) {
		FUNC0(req, "no parent given");
		return;
	}
	offset = FUNC2(req, "offset", sizeof(*offset));
	if (offset == NULL) {
		FUNC0(req, "no offset given");
		return;
	}
	rename = FUNC2(req, "rename", sizeof(*rename));
	if (rename == NULL) {
		FUNC0(req, "no rename flag given");
		return;
	}

	type_child = FUNC6(sc, child);
	type_parent = FUNC6(sc, parent);

	switch (type_child) {
	case GV_TYPE_PLEX:
		if (type_parent != GV_TYPE_VOL) {
			FUNC0(req, "no such volume to attach to");
			return;
		}
		v = FUNC5(sc, parent);
		p = FUNC3(sc, child);
		FUNC7(sc, GV_EVENT_ATTACH_PLEX, p, v, *offset, *rename);
		break;
	case GV_TYPE_SD:
		if (type_parent != GV_TYPE_PLEX) {
			FUNC0(req, "no such plex to attach to");
			return;
		}
		p = FUNC3(sc, parent);
		s = FUNC4(sc, child);
		FUNC7(sc, GV_EVENT_ATTACH_SD, s, p, *offset, *rename);
		break;
	default:
		FUNC0(req, "invalid child type");
		break;
	}
}