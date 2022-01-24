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
struct sc_info {int dummy; } ;
struct emu_voice {struct emu_voice* slave; int /*<<< orphan*/  vnum; int /*<<< orphan*/  speed; scalar_t__ b16; scalar_t__ stereo; } ;

/* Variables and functions */
 scalar_t__ EMU_CHAN_CCR_CACHEINVALIDSIZE ; 
 scalar_t__ EMU_CHAN_CCR_READADDRESS ; 
 scalar_t__ EMU_CHAN_CD0 ; 
 scalar_t__ EMU_CHAN_CPF_PITCH ; 
 scalar_t__ EMU_CHAN_CVCF ; 
 scalar_t__ EMU_CHAN_DCYSUSV ; 
 scalar_t__ EMU_CHAN_IFATN ; 
 scalar_t__ EMU_CHAN_IP ; 
 scalar_t__ EMU_CHAN_PTRX_PITCHTARGET ; 
 scalar_t__ EMU_CHAN_VTFT ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC4(struct sc_info *sc, struct emu_voice *v, int go)
{
	u_int32_t pitch_target, initial_pitch;
	u_int32_t cra, cs, ccis;
	u_int32_t sample, i;

	if (go) {
		cra = 64;
		cs = v->stereo ? 4 : 2;
		ccis = v->stereo ? 28 : 30;
		ccis *= v->b16 ? 1 : 2;
		sample = v->b16 ? 0x00000000 : 0x80808080;

		for (i = 0; i < cs; i++)
			FUNC3(sc, v->vnum, EMU_CHAN_CD0 + i, sample);
		FUNC3(sc, v->vnum, EMU_CHAN_CCR_CACHEINVALIDSIZE, 0);
		FUNC3(sc, v->vnum, EMU_CHAN_CCR_READADDRESS, cra);
		FUNC3(sc, v->vnum, EMU_CHAN_CCR_CACHEINVALIDSIZE, ccis);

		FUNC3(sc, v->vnum, EMU_CHAN_IFATN, 0xff00);
		FUNC3(sc, v->vnum, EMU_CHAN_VTFT, 0xffffffff);
		FUNC3(sc, v->vnum, EMU_CHAN_CVCF, 0xffffffff);
		FUNC3(sc, v->vnum, EMU_CHAN_DCYSUSV, 0x00007f7f);
		FUNC0(sc, v->vnum, 0);

		pitch_target = FUNC1(v->speed);
		initial_pitch = FUNC2(v->speed) >> 8;
		FUNC3(sc, v->vnum, EMU_CHAN_PTRX_PITCHTARGET, pitch_target);
		FUNC3(sc, v->vnum, EMU_CHAN_CPF_PITCH, pitch_target);
		FUNC3(sc, v->vnum, EMU_CHAN_IP, initial_pitch);
	} else {
		FUNC3(sc, v->vnum, EMU_CHAN_PTRX_PITCHTARGET, 0);
		FUNC3(sc, v->vnum, EMU_CHAN_CPF_PITCH, 0);
		FUNC3(sc, v->vnum, EMU_CHAN_IFATN, 0xffff);
		FUNC3(sc, v->vnum, EMU_CHAN_VTFT, 0x0000ffff);
		FUNC3(sc, v->vnum, EMU_CHAN_CVCF, 0x0000ffff);
		FUNC3(sc, v->vnum, EMU_CHAN_IP, 0);
		FUNC0(sc, v->vnum, 1);
	}
	if (v->slave != NULL)
		FUNC4(sc, v->slave, go);
}