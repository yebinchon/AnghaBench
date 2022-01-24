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
struct dtsec_softc {int /*<<< orphan*/ * sc_fi_zone; int /*<<< orphan*/  sc_fi_zname; int /*<<< orphan*/  sc_dev; } ;
struct dtsec_rm_frame_info {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct dtsec_softc *sc)
{

	FUNC1(sc->sc_fi_zname, sizeof(sc->sc_fi_zname), "%s: Frame Info",
	    FUNC0(sc->sc_dev));

	sc->sc_fi_zone = FUNC2(sc->sc_fi_zname,
	    sizeof(struct dtsec_rm_frame_info), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	if (sc->sc_fi_zone == NULL)
		return (EIO);

	return (0);
}