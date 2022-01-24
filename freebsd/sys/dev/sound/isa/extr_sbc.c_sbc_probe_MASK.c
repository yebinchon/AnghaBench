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
typedef  int u_int32_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct resource*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  sbc_ids ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	char *s = NULL;
	u_int32_t lid, vid;

	lid = FUNC5(dev);
	vid = FUNC6(dev);
	if (lid) {
		if (lid == 0x01000000 && vid != 0x01009305) /* ALS0001 */
			return ENXIO;
		/* Check pnp ids */
		return FUNC0(FUNC3(dev), dev, sbc_ids);
	} else {
		int rid = 0, ver;
	    	struct resource *io;

		io = FUNC1(dev, SYS_RES_IOPORT, &rid,
						 16, RF_ACTIVE);
		if (!io) goto bad;
    		if (FUNC8(io)) goto bad2;
		ver = FUNC7(io);
		if (ver == 0) goto bad2;
		switch ((ver & 0x00000f00) >> 8) {
		case 1:
			FUNC4(dev, "SoundBlaster 1.0 (not supported)");
			s = NULL;
			break;

		case 2:
			s = "SoundBlaster 2.0";
			break;

		case 3:
			s = (ver & 0x0000f000)? "ESS 488" : "SoundBlaster Pro";
			break;

		case 4:
			s = "SoundBlaster 16";
			break;

		case 5:
			s = (ver & 0x00000008)? "ESS 688" : "ESS 1688";
			break;
	     	}
		if (s) FUNC4(dev, s);
bad2:		FUNC2(dev, SYS_RES_IOPORT, rid, io);
bad:		return s? 0 : ENXIO;
	}
}