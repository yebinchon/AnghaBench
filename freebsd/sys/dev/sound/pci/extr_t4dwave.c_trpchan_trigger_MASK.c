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
struct tr_chinfo {int fmc; int eso; int rvol; int cvol; int active; scalar_t__ bufhalf; scalar_t__ vol; scalar_t__ pan; scalar_t__ gvsel; int /*<<< orphan*/  buffer; scalar_t__ cso; int /*<<< orphan*/  lba; scalar_t__ alpha; scalar_t__ ec; scalar_t__ fms; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCMTRIG_START ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tr_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tr_chinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct tr_chinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct tr_chinfo*) ; 

__attribute__((used)) static int
FUNC8(kobj_t obj, void *data, int go)
{
	struct tr_chinfo *ch = data;

	if (!FUNC0(go))
		return 0;

	if (go == PCMTRIG_START) {
		ch->fmc = 3;
		ch->fms = 0;
		ch->ec = 0;
		ch->alpha = 0;
		ch->lba = FUNC2(ch->buffer);
		ch->cso = 0;
		ch->eso = (FUNC3(ch->buffer) / FUNC1(ch->buffer)) - 1;
		ch->rvol = ch->cvol = 0x7f;
		ch->gvsel = 0;
		ch->pan = 0;
		ch->vol = 0;
		ch->bufhalf = 0;
   		FUNC7(ch);
		FUNC4(ch, 1);
		FUNC5(ch);
		ch->active = 1;
	} else {
		FUNC6(ch);
		ch->active = 0;
	}

	return 0;
}