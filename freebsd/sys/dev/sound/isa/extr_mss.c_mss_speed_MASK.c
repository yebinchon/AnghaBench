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
struct mss_info {scalar_t__ bd_id; } ;
struct mss_chinfo {struct mss_info* parent; } ;

/* Variables and functions */
 scalar_t__ MD_AD1845 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mss_info*) ; 
 int FUNC3 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mss_info*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct mss_chinfo *ch, int speed)
{
    	struct mss_info *mss = ch->parent;
    	/*
     	* In the CS4231, the low 4 bits of I8 are used to hold the
     	* sample rate.  Only a fixed number of values is allowed. This
     	* table lists them. The speed-setting routines scans the table
     	* looking for the closest match. This is the only supported method.
     	*
     	* In the CS4236, there is an alternate metod (which we do not
     	* support yet) which provides almost arbitrary frequency setting.
     	* In the AD1845, it looks like the sample rate can be
     	* almost arbitrary, and written directly to a register.
     	* In the OPTi931, there is a SB command which provides for
     	* almost arbitrary frequency setting.
     	*
     	*/
    	FUNC1(mss);
    	if (mss->bd_id == MD_AD1845) { /* Use alternate speed select regs */
		FUNC5(mss, 22, (speed >> 8) & 0xff);	/* Speed MSB */
		FUNC5(mss, 23, speed & 0xff);	/* Speed LSB */
		/* XXX must also do something in I27 for the ad1845 */
    	} else {
        	int i, sel = 0; /* assume entry 0 does not contain -1 */
        	static int speeds[] =
      	    	{8000, 5512, 16000, 11025, 27429, 18900, 32000, 22050,
	    	-1, 37800, -1, 44100, 48000, 33075, 9600, 6615};

        	for (i = 1; i < 16; i++)
   		    	if (speeds[i] > 0 &&
			    FUNC0(speed-speeds[i]) < FUNC0(speed-speeds[sel])) sel = i;
        	speed = speeds[sel];
        	FUNC5(mss, 8, (FUNC3(mss, 8) & 0xf0) | sel);
		FUNC4(mss, 10000);
    	}
    	FUNC2(mss);

    	return speed;
}