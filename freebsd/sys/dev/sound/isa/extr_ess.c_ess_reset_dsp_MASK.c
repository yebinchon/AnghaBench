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
struct ess_info {int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SBDSP_RST ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int) ; 
 int FUNC3 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ess_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ess_info *sc)
{
    	FUNC4(sc, SBDSP_RST, 3);
    	FUNC1(100);
    	FUNC4(sc, SBDSP_RST, 0);
    	if (FUNC3(sc) != 0xAA) {
        	FUNC0(FUNC5("ess_reset_dsp 0x%lx failed\n",
			   FUNC6(sc->io_base)));
		return ENXIO;	/* Sorry */
    	}
    	FUNC2(sc, 0xc6);
    	return 0;
}