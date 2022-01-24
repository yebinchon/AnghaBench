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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct bge_vendor {char* v_name; } ;
struct bge_type {scalar_t__ bge_vid; scalar_t__ bge_did; } ;
struct bge_softc {int /*<<< orphan*/  bge_dev; } ;
struct bge_revision {char* br_name; } ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct bge_type* bge_devs ; 
 scalar_t__ FUNC1 (struct bge_softc*) ; 
 struct bge_revision* FUNC2 (int) ; 
 struct bge_vendor* FUNC3 (scalar_t__) ; 
 struct bge_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	char buf[96];
	char model[64];
	const struct bge_revision *br;
	const char *pname;
	struct bge_softc *sc;
	const struct bge_type *t = bge_devs;
	const struct bge_vendor *v;
	uint32_t id;
	uint16_t did, vid;

	sc = FUNC4(dev);
	sc->bge_dev = dev;
	vid = FUNC7(dev);
	did = FUNC6(dev);
	while(t->bge_vid != 0) {
		if ((vid == t->bge_vid) && (did == t->bge_did)) {
			id = FUNC0(dev);
			br = FUNC2(id);
			if (FUNC1(sc) &&
			    FUNC8(dev, &pname) == 0)
				FUNC9(model, sizeof(model), "%s", pname);
			else {
				v = FUNC3(vid);
				FUNC9(model, sizeof(model), "%s %s",
				    v != NULL ? v->v_name : "Unknown",
				    br != NULL ? br->br_name :
				    "NetXtreme/NetLink Ethernet Controller");
			}
			FUNC9(buf, sizeof(buf), "%s, %sASIC rev. %#08x",
			    model, br != NULL ? "" : "unknown ", id);
			FUNC5(dev, buf);
			return (BUS_PROBE_DEFAULT);
		}
		t++;
	}

	return (ENXIO);
}