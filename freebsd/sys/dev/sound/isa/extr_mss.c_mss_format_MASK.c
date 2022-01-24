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
struct mss_info {int dummy; } ;
struct mss_chinfo {int fmt; struct mss_info* parent; } ;

/* Variables and functions */
#define  AFMT_A_LAW 133 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  AFMT_IMA_ADPCM 132 
#define  AFMT_MU_LAW 131 
#define  AFMT_S16_LE 130 
#define  AFMT_U16_BE 129 
#define  AFMT_U8 128 
 int /*<<< orphan*/  FUNC2 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mss_info*) ; 
 int FUNC4 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mss_info*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct mss_chinfo *ch, u_int32_t format)
{
    	struct mss_info *mss = ch->parent;
    	int i, arg = FUNC1(format);

    	/*
     	* The data format uses 3 bits (just 2 on the 1848). For each
     	* bit setting, the following array returns the corresponding format.
     	* The code scans the array looking for a suitable format. In
     	* case it is not found, default to AFMT_U8 (not such a good
     	* choice, but let's do it for compatibility...).
     	*/

    	static int fmts[] =
        	{AFMT_U8, AFMT_MU_LAW, AFMT_S16_LE, AFMT_A_LAW,
		-1, AFMT_IMA_ADPCM, AFMT_U16_BE, -1};

	ch->fmt = format;
    	for (i = 0; i < 8; i++) if (arg == fmts[i]) break;
    	arg = i << 1;
    	if (FUNC0(format) > 1) arg |= 1;
    	arg <<= 4;
    	FUNC2(mss);
    	FUNC6(mss, 8, (FUNC4(mss, 8) & 0x0f) | arg);
	FUNC5(mss, 10000);
    	if (FUNC4(mss, 12) & 0x40) {	/* mode2? */
		FUNC6(mss, 28, arg); /* capture mode */
		FUNC5(mss, 10000);
	}
    	FUNC3(mss);
    	return format;
}