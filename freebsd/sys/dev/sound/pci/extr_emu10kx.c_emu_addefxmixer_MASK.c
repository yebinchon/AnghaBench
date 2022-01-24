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
typedef  int /*<<< orphan*/  uint32_t ;
struct emu_sc_info {int /*<<< orphan*/  root; int /*<<< orphan*/  ctx; int /*<<< orphan*/  rm; } ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct emu_sc_info*,int const,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct emu_sc_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  sysctl_emu_mixer_control ; 

__attribute__((used)) static int
FUNC5(struct emu_sc_info *sc, const char *mix_name, const int mix_id, uint32_t defvolume)
{
	int volgpr;
	char	sysctl_name[32];

	volgpr = FUNC2(sc->rm, 1);
	FUNC3(sc, volgpr, defvolume);
	/*
	 * Mixer controls with NULL mix_name are handled
	 * by AC97 emulation code or PCM mixer.
	 */
	if (mix_name != NULL) {
		/*
		 * Temporary sysctls should start with underscore,
		 * see freebsd-current mailing list, emu10kx driver
		 * discussion around 2006-05-24.
		 */
		FUNC4(sysctl_name, 32, "_%s", mix_name);
		FUNC0(sc->ctx,
			FUNC1(sc->root),
			OID_AUTO, sysctl_name,
			CTLTYPE_INT | CTLFLAG_RW, sc, mix_id,
			sysctl_emu_mixer_control, "I", "");
	}

	return (volgpr);
}