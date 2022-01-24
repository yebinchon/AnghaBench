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
typedef  int u_char ;
struct sb_info {int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SBDSP_RST ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sb_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct sb_info *sb)
{
	u_char b;

	FUNC5(sb);
    	FUNC6(sb, SBDSP_RST, 3);
    	FUNC1(100);
    	FUNC6(sb, SBDSP_RST, 0);
	b = FUNC4(sb);
    	if (b != 0xAA) {
        	FUNC0(FUNC2("sb_reset_dsp 0x%lx failed\n",
			   FUNC3(sb->io_base)));
		return ENXIO;	/* Sorry */
    	}
    	return 0;
}