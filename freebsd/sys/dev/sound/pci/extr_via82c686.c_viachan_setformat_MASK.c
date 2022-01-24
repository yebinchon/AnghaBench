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
struct via_info {int /*<<< orphan*/  lock; } ;
struct via_chinfo {int dir; int /*<<< orphan*/  mode; struct via_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AFMT_S16_LE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VIA_RPMODE_16BIT ; 
 int VIA_RPMODE_STEREO ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct via_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, u_int32_t format)
{
	struct via_chinfo *ch = data;
	struct via_info *via = ch->parent;
	int mode, mode_set;

	mode_set = 0;
	if (FUNC0(format) > 1)
		mode_set |= VIA_RPMODE_STEREO;
	if (format & AFMT_S16_LE)
		mode_set |= VIA_RPMODE_16BIT;

	FUNC1(FUNC2("set format: dir = %d, format=%x\n", ch->dir, format));
	FUNC3(via->lock);
	mode = FUNC5(via, ch->mode, 1);
	mode &= ~(VIA_RPMODE_16BIT | VIA_RPMODE_STEREO);
	mode |= mode_set;
	FUNC6(via, ch->mode, mode, 1);
	FUNC4(via->lock);

	return 0;
}