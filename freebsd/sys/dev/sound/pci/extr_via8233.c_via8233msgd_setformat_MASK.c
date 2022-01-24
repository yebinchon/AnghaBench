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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct via_info {int /*<<< orphan*/  lock; } ;
struct via_chinfo {struct via_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AFMT_S16_LE ; 
 int MC_SGD_16BIT ; 
 int MC_SGD_8BIT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  VIA_MC_SGD_FORMAT ; 
 int /*<<< orphan*/  VIA_MC_SLOT_SELECT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, uint32_t format)
{
	struct via_chinfo *ch = data;
	struct via_info *via = ch->parent;

	uint32_t s = 0xff000000;
	uint8_t  v = (format & AFMT_S16_LE) ? MC_SGD_16BIT : MC_SGD_8BIT;

	if (FUNC0(format) > 1) {
		v |= FUNC1(2);
		s |= FUNC2(1) | FUNC3(2);
	} else {
		v |= FUNC1(1);
		s |= FUNC2(1) | FUNC3(1);
	}

	FUNC4(via->lock);
	FUNC6(via, VIA_MC_SLOT_SELECT, s, 4);
	FUNC6(via, VIA_MC_SGD_FORMAT, v, 1);
	FUNC5(via->lock);

	return (0);
}