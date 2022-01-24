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
struct sbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cis1_info; int /*<<< orphan*/  product; int /*<<< orphan*/  manufacturer; } ;
struct pccard_softc {TYPE_1__ card; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int /*<<< orphan*/  function; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pccard_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int SBUF_FIXEDLEN ; 
 int SBUF_INCLUDENUL ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,...) ; 

__attribute__((used)) static int
FUNC7(device_t bus, device_t child, char *buf,
    size_t buflen)
{
	struct pccard_ivar *devi = FUNC0(child);
	struct pccard_function *pf = devi->pf;
	struct pccard_softc *sc = FUNC1(bus);
	struct sbuf sb;

	FUNC5(&sb, buf, buflen, SBUF_FIXEDLEN | SBUF_INCLUDENUL);
	FUNC6(&sb, "manufacturer=0x%04x product=0x%04x "
	    "cisvendor=\"", sc->card.manufacturer, sc->card.product);
	FUNC2(&sb, sc->card.cis1_info[0]);
	FUNC6(&sb, "\" cisproduct=\"");
	FUNC2(&sb, sc->card.cis1_info[1]);
	FUNC6(&sb, "\" function_type=%d", pf->function);
	FUNC4(&sb);
	FUNC3(&sb);

	return (0);
}