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
typedef  int /*<<< orphan*/  video_adapter_t ;
struct creator_softc {int dummy; } ;

/* Variables and functions */
 int FBC_DRAWOP_RECTANGLE ; 
 int FBC_ROP_NEW ; 
 int /*<<< orphan*/  FFB_FBC ; 
 int /*<<< orphan*/  FFB_FBC_BH ; 
 int /*<<< orphan*/  FFB_FBC_BW ; 
 int /*<<< orphan*/  FFB_FBC_BX ; 
 int /*<<< orphan*/  FFB_FBC_BY ; 
 int /*<<< orphan*/  FFB_FBC_DRAWOP ; 
 int /*<<< orphan*/  FFB_FBC_ROP ; 
 int /*<<< orphan*/  FUNC0 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * creator_cmap ; 
 int /*<<< orphan*/  FUNC1 (struct creator_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct creator_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct creator_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct creator_softc*) ; 

__attribute__((used)) static int
FUNC5(video_adapter_t *adp, int val, int x, int y, int cx, int cy)
{
	struct creator_softc *sc;

	sc = (struct creator_softc *)adp;
	FUNC3(sc, 0xffffffff);
	FUNC1(sc, 2);
	FUNC0(sc, FFB_FBC, FFB_FBC_ROP, FBC_ROP_NEW);
	FUNC0(sc, FFB_FBC, FFB_FBC_DRAWOP, FBC_DRAWOP_RECTANGLE);
	FUNC2(sc, creator_cmap[val & 0xf]);
	/*
	 * Note that at least the Elite3D cards are sensitive to the order
	 * of operations here.
	 */
	FUNC1(sc, 4);
	FUNC0(sc, FFB_FBC, FFB_FBC_BY, y);
	FUNC0(sc, FFB_FBC, FFB_FBC_BX, x);
	FUNC0(sc, FFB_FBC, FFB_FBC_BH, cy);
	FUNC0(sc, FFB_FBC, FFB_FBC_BW, cx);
	FUNC4(sc);
	return (0);
}