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
struct snd_mixer {int dummy; } ;
struct mss_info {int bd_id; } ;

/* Variables and functions */
#define  MD_AD1848 132 
#define  MD_GUSMAX 131 
#define  MD_GUSPNP 130 
#define  MD_OPTI930 129 
#define  MD_OPTI931 128 
 int /*<<< orphan*/  MODE1_MIXER_DEVICES ; 
 int /*<<< orphan*/  MODE2_MIXER_DEVICES ; 
 int /*<<< orphan*/  MSS_REC_DEVICES ; 
 int /*<<< orphan*/  OPTI930_MIXER_DEVICES ; 
 int /*<<< orphan*/  OPTI931_MIXER_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct mss_info*,int,int) ; 
 struct mss_info* FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mss_info*) ; 

__attribute__((used)) static int
FUNC6(struct snd_mixer *m)
{
	struct mss_info *mss = FUNC1(m);

	FUNC2(m, MODE2_MIXER_DEVICES);
	FUNC3(m, MSS_REC_DEVICES);
	switch(mss->bd_id) {
	case MD_OPTI930:
		FUNC2(m, OPTI930_MIXER_DEVICES);
		break;

	case MD_OPTI931:
		FUNC2(m, OPTI931_MIXER_DEVICES);
		FUNC4(mss);
		FUNC0(mss, 20, 0x88);
		FUNC0(mss, 21, 0x88);
		FUNC5(mss);
		break;

	case MD_AD1848:
		FUNC2(m, MODE1_MIXER_DEVICES);
		break;

	case MD_GUSPNP:
	case MD_GUSMAX:
		/* this is only necessary in mode 3 ... */
		FUNC4(mss);
		FUNC0(mss, 22, 0x88);
		FUNC0(mss, 23, 0x88);
		FUNC5(mss);
		break;
	}
	return 0;
}