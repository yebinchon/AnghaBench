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
typedef  scalar_t__ u_int32_t ;
typedef  int u_char ;
struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECORD_SRC ; 
 scalar_t__ SOUND_MASK_CD ; 
 scalar_t__ SOUND_MASK_LINE ; 
 scalar_t__ SOUND_MASK_MIC ; 
 struct sb_info* FUNC0 (struct snd_mixer*) ; 
 int FUNC1 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sb_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int32_t
FUNC3(struct snd_mixer *m, u_int32_t src)
{
    	struct sb_info *sb = FUNC0(m);
    	u_char recdev;

	if      (src == SOUND_MASK_LINE)
		recdev = 0x06;
	else if (src == SOUND_MASK_CD)
		recdev = 0x02;
	else { /* default: mic */
	    	src = SOUND_MASK_MIC;
	    	recdev = 0;
	}
	FUNC2(sb, RECORD_SRC, recdev | (FUNC1(sb, RECORD_SRC) & ~0x07));

	return src;
}