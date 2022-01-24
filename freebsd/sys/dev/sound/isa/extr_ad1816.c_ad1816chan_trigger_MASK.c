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
struct ad1816_info {int dummy; } ;
struct ad1816_chinfo {scalar_t__ dir; int blksz; int /*<<< orphan*/  buffer; struct ad1816_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int AD1816_CAPT ; 
 int AD1816_ENABLE ; 
 int AD1816_PLAY ; 
 scalar_t__ PCMDIR_PLAY ; 
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct ad1816_info*) ; 
 int FUNC2 (struct ad1816_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ad1816_info*,int,int) ; 
 int FUNC5 (struct ad1816_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ad1816_info*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(kobj_t obj, void *data, int go)
{
	struct ad1816_chinfo *ch = data;
    	struct ad1816_info *ad1816 = ch->parent;
    	int wr, reg;

	if (!FUNC0(go))
		return 0;

	FUNC8(ch->buffer, go);
    	wr = (ch->dir == PCMDIR_PLAY);
    	reg = wr? AD1816_PLAY : AD1816_CAPT;
	FUNC1(ad1816);
    	switch (go) {
    	case PCMTRIG_START:
		/* start only if not already running */
		if (!(FUNC5(ad1816, reg) & AD1816_ENABLE)) {
	    		int cnt = ((ch->blksz) >> 2) - 1;
	    		FUNC4(ad1816, wr? 8 : 10, cnt); /* count */
	    		FUNC4(ad1816, wr? 9 : 11, 0); /* reset cur cnt */
	    		FUNC4(ad1816, 1, FUNC2(ad1816, 1) |
				     (wr? 0x8000 : 0x4000)); /* enable int */
	    		/* enable playback */
	    		FUNC6(ad1816, reg, FUNC5(ad1816, reg) | AD1816_ENABLE);
	    		if (!(FUNC5(ad1816, reg) & AD1816_ENABLE))
				FUNC7("ad1816: failed to start %s DMA!\n",
				       wr? "play" : "rec");
		}
		break;

    	case PCMTRIG_STOP:
    	case PCMTRIG_ABORT:		/* XXX check this... */
		/* we don't test here if it is running... */
		if (wr) {
	    		FUNC4(ad1816, 1, FUNC2(ad1816, 1) &
				     ~(wr? 0x8000 : 0x4000));
	    		/* disable int */
	    		FUNC6(ad1816, reg, FUNC5(ad1816, reg) & ~AD1816_ENABLE);
	    		/* disable playback */
	    		if (FUNC5(ad1816, reg) & AD1816_ENABLE)
				FUNC7("ad1816: failed to stop %s DMA!\n",
				       wr? "play" : "rec");
	    		FUNC4(ad1816, wr? 8 : 10, 0); /* reset base cnt */
	    		FUNC4(ad1816, wr? 9 : 11, 0); /* reset cur cnt */
		}
		break;
    	}
	FUNC3(ad1816);
    	return 0;
}