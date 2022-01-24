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
struct ad1816_info {int dummy; } ;
struct ad1816_chinfo {scalar_t__ dir; struct ad1816_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int AD1816_ALAW ; 
 int AD1816_CAPT ; 
 int AD1816_MULAW ; 
 int AD1816_PLAY ; 
 int AD1816_S16BE ; 
 int AD1816_S16LE ; 
 int AD1816_STEREO ; 
 int AD1816_U8 ; 
#define  AFMT_A_LAW 132 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  AFMT_MU_LAW 131 
#define  AFMT_S16_BE 130 
#define  AFMT_S16_LE 129 
#define  AFMT_U8 128 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC2 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ad1816_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ad1816_info*,int,int) ; 

__attribute__((used)) static int
FUNC6(kobj_t obj, void *data, u_int32_t format)
{
	struct ad1816_chinfo *ch = data;
  	struct ad1816_info *ad1816 = ch->parent;
    	int fmt = AD1816_U8, reg;

	FUNC2(ad1816);
    	if (ch->dir == PCMDIR_PLAY) {
        	reg = AD1816_PLAY;
        	FUNC4(ad1816, 8, 0x0000);	/* reset base and current counter */
        	FUNC4(ad1816, 9, 0x0000);	/* for playback and capture */
    	} else {
        	reg = AD1816_CAPT;
        	FUNC4(ad1816, 10, 0x0000);
        	FUNC4(ad1816, 11, 0x0000);
    	}
    	switch (FUNC1(format)) {
    	case AFMT_A_LAW:
        	fmt = AD1816_ALAW;
		break;

    	case AFMT_MU_LAW:
		fmt = AD1816_MULAW;
		break;

    	case AFMT_S16_LE:
		fmt = AD1816_S16LE;
		break;

    	case AFMT_S16_BE:
		fmt = AD1816_S16BE;
		break;

    	case AFMT_U8:
		fmt = AD1816_U8;
		break;
    	}
    	if (FUNC0(format) > 1) fmt |= AD1816_STEREO;
    	FUNC5(ad1816, reg, fmt);
	FUNC3(ad1816);
#if 0
    	return format;
#else
    	return 0;
#endif
}