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
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_CMD_GETID ; 
 int /*<<< orphan*/  DSP_CMD_GETVER ; 
 int /*<<< orphan*/  FUNC0 (struct resource*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct resource*) ; 

__attribute__((used)) static int
FUNC2(struct resource *io)
{
	int ver, essver, rev;

    	FUNC0(io, DSP_CMD_GETVER);	/* Get version */
    	ver = (FUNC1(io) << 8) | FUNC1(io);
	if (ver < 0x100 || ver > 0x4ff) return 0;
    	if (ver == 0x0301) {
	    	/* Try to detect ESS chips. */
	    	FUNC0(io, DSP_CMD_GETID); /* Return ident. bytes. */
	    	essver = (FUNC1(io) << 8) | FUNC1(io);
	    	rev = essver & 0x000f;
	    	essver &= 0xfff0;
	    	if (essver == 0x4880) ver |= 0x1000;
	    	else if (essver == 0x6880) ver = 0x0500 | rev;
	}
	return ver;
}