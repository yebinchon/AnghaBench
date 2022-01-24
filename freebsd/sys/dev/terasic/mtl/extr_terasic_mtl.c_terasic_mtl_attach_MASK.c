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
struct terasic_mtl_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BIG_ENDIAN ; 
 scalar_t__ BYTE_ORDER ; 
 int /*<<< orphan*/  TERASIC_MTL_ALPHA_OPAQUE ; 
 int /*<<< orphan*/  TERASIC_MTL_ALPHA_TRANSPARENT ; 
 int /*<<< orphan*/  TERASIC_MTL_COLOR_BLACK ; 
 int /*<<< orphan*/  FUNC0 (struct terasic_mtl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_mtl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_mtl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_mtl_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct terasic_mtl_softc*) ; 
 int FUNC5 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct terasic_mtl_softc*) ; 
 int FUNC7 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct terasic_mtl_softc*,int) ; 
 int FUNC10 (struct terasic_mtl_softc*) ; 
 int FUNC11 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct terasic_mtl_softc*) ; 

int
FUNC13(struct terasic_mtl_softc *sc)
{
	int error;

	error = FUNC7(sc);
	if (error)
		goto error;
	error = FUNC5(sc);
	if (error)
		goto error;
	error = FUNC11(sc);
	if (error)
		goto error;
	/*
	 * XXXRW: Once we've attached syscons or vt, we can't detach it, so do
	 * it last.
	 */
#if defined(DEV_VT)
	terasic_mtl_reg_pixel_endian_set(sc, BYTE_ORDER == BIG_ENDIAN);
	error = terasic_mtl_fbd_attach(sc);
	if (error)
		goto error;
	terasic_mtl_blend_pixel_set(sc, TERASIC_MTL_ALPHA_OPAQUE);
	terasic_mtl_blend_textfg_set(sc, TERASIC_MTL_ALPHA_TRANSPARENT);
	terasic_mtl_blend_textbg_set(sc, TERASIC_MTL_ALPHA_TRANSPARENT);
#endif
#if defined(DEV_SC)
	error = terasic_mtl_syscons_attach(sc);
	if (error)
		goto error;
	terasic_mtl_blend_pixel_set(sc, TERASIC_MTL_ALPHA_TRANSPARENT);
	terasic_mtl_blend_textfg_set(sc, TERASIC_MTL_ALPHA_OPAQUE);
	terasic_mtl_blend_textbg_set(sc, TERASIC_MTL_ALPHA_OPAQUE);
#endif
	FUNC0(sc, TERASIC_MTL_COLOR_BLACK);
	return (0);
error:
	FUNC12(sc);
	FUNC6(sc);
	FUNC8(sc);
	return (error);
}