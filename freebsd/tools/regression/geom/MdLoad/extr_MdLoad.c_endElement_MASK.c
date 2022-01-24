#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct simdisk_softc {int sectorsize; int /*<<< orphan*/  sbuf; TYPE_1__* sp; void* fwcylinders; void* fwheads; void* fwsectors; scalar_t__ mediasize; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {int /*<<< orphan*/ * data; void* offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct simdisk_softc*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 void* FUNC10 (char*,char**,int) ; 
 void* FUNC11 (char*,char**,int /*<<< orphan*/ ) ; 
 char FUNC12 (char) ; 

__attribute__((used)) static void
FUNC13(void *userData, const char *name)
{
	struct simdisk_softc *sc;
	char *p;
	u_char *q;
	int i, j;
	off_t o;

	sc = userData;

	if (!FUNC9(name, "comment")) {
		FUNC6(sc->sbuf);
		return;
	}
	FUNC8(sc->sbuf);
	if (!FUNC9(name, "sectorsize")) {
		sc->sectorsize = FUNC10(FUNC7(sc->sbuf), &p, 0);
		if (*p != '\0')
			FUNC0(1, "strtoul croaked on sectorsize");
	} else if (!FUNC9(name, "mediasize")) {
		o = FUNC11(FUNC7(sc->sbuf), &p, 0);
		if (*p != '\0')
			FUNC0(1, "strtoul croaked on mediasize");
		if (o > 0)
			sc->mediasize = o;
	} else if (!FUNC9(name, "fwsectors")) {
		sc->fwsectors = FUNC10(FUNC7(sc->sbuf), &p, 0);
		if (*p != '\0')
			FUNC0(1, "strtoul croaked on fwsectors");
	} else if (!FUNC9(name, "fwheads")) {
		sc->fwheads = FUNC10(FUNC7(sc->sbuf), &p, 0);
		if (*p != '\0')
			FUNC0(1, "strtoul croaked on fwheads");
	} else if (!FUNC9(name, "fwcylinders")) {
		sc->fwcylinders = FUNC10(FUNC7(sc->sbuf), &p, 0);
		if (*p != '\0')
			FUNC0(1, "strtoul croaked on fwcylinders");
	} else if (!FUNC9(name, "offset")) {
		sc->sp->offset= FUNC11(FUNC7(sc->sbuf), &p, 0);
		if (*p != '\0')
			FUNC0(1, "strtoul croaked on offset");
	} else if (!FUNC9(name, "fill")) {
		j = FUNC10(FUNC7(sc->sbuf), NULL, 16);
		FUNC4(sc->sp->data, j, sc->sectorsize);
	} else if (!FUNC9(name, "hexdata")) {
		q = sc->sp->data;
		p = FUNC7(sc->sbuf);
		for (i = 0; i < sc->sectorsize; i++) {
			if (!FUNC3(*p))
				FUNC0(1, "I croaked on hexdata %d:(%02x)", i, *p);
			if (FUNC2(*p))
				j = (*p - '0') << 4;
			else
				j = (FUNC12(*p) - 'a' + 10) << 4;
			p++;
			if (!FUNC3(*p))
				FUNC0(1, "I croaked on hexdata %d:(%02x)", i, *p);
			if (FUNC2(*p))
				j |= *p - '0';
			else
				j |= FUNC12(*p) - 'a' + 10;
			p++;
			*q++ = j;
		}
	} else if (!FUNC9(name, "sector")) {
		FUNC1(sc, sc->sp);
		sc->sp = NULL;
	} else if (!FUNC9(name, "diskimage")) {
	} else if (!FUNC9(name, "FreeBSD")) {
	} else {
		FUNC5("<%s>[[%s]]\n", name, FUNC7(sc->sbuf));
	}
	FUNC6(sc->sbuf);
}