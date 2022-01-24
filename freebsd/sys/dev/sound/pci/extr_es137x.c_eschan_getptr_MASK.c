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
typedef  int uint32_t ;
struct es_info {scalar_t__ polling; } ;
struct es_chinfo {int ptr; scalar_t__ dir; scalar_t__ index; struct es_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int ES1370_REG_ADC_FRAMECNT ; 
 int ES1370_REG_DAC1_FRAMECNT ; 
 int ES1370_REG_DAC2_FRAMECNT ; 
 int /*<<< orphan*/  ES1370_REG_MEMPAGE ; 
 int ES_BLK_ALIGN ; 
 scalar_t__ ES_DAC1 ; 
 int /*<<< orphan*/  FUNC0 (struct es_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct es_info*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int FUNC2 (struct es_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct es_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static uint32_t
FUNC4(kobj_t obj, void *data)
{
	struct es_chinfo *ch = data;
	struct es_info *es = ch->parent;
	uint32_t reg, cnt;

	FUNC0(es);
	if (es->polling != 0)
		cnt = ch->ptr;
	else {
		if (ch->dir == PCMDIR_PLAY) {
			if (ch->index == ES_DAC1)
				reg = ES1370_REG_DAC1_FRAMECNT;
			else
				reg = ES1370_REG_DAC2_FRAMECNT;
		} else
			reg = ES1370_REG_ADC_FRAMECNT;
		FUNC3(es, ES1370_REG_MEMPAGE, reg >> 8, 4);
		cnt = FUNC2(es, reg & 0x000000ff, 4) >> 16;
		/* cnt is longwords */
		cnt <<= 2;
	}
	FUNC1(es);

	cnt &= ES_BLK_ALIGN;

	return (cnt);
}