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
struct ahd_softc {scalar_t__ src_mode; scalar_t__ dst_mode; } ;
typedef  scalar_t__ ahd_mode ;

/* Variables and functions */
 scalar_t__ AHD_MODE_UNKNOWN ; 
 int AHD_SHOW_MODEPTR ; 
 int /*<<< orphan*/  MODE_PTR ; 
 int FUNC0 (struct ahd_softc*,scalar_t__,scalar_t__) ; 
 int ahd_debug ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static __inline void
FUNC5(struct ahd_softc *ahd, ahd_mode src, ahd_mode dst)
{
	if (ahd->src_mode == src && ahd->dst_mode == dst)
		return;
#ifdef AHD_DEBUG
	if (ahd->src_mode == AHD_MODE_UNKNOWN
	 || ahd->dst_mode == AHD_MODE_UNKNOWN)
		panic("Setting mode prior to saving it.\n");
	if ((ahd_debug & AHD_SHOW_MODEPTR) != 0)
		printf("%s: Setting mode 0x%x\n", ahd_name(ahd),
		       ahd_build_mode_state(ahd, src, dst));
#endif
	FUNC2(ahd, MODE_PTR, FUNC0(ahd, src, dst));
	ahd->src_mode = src;
	ahd->dst_mode = dst;
}