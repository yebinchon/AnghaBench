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
struct via_info {int /*<<< orphan*/  lock; } ;
struct via_chinfo {struct via_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AFMT_S16_LE ; 
 int /*<<< orphan*/  VIA_WR0_FORMAT ; 
 int WR_FORMAT_16BIT ; 
 int WR_FORMAT_STEREO ; 
 int WR_FORMAT_STOP_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data, uint32_t format)
{
	struct via_chinfo *ch = data;
	struct via_info *via = ch->parent;

	uint32_t f = WR_FORMAT_STOP_INDEX;

	if (FUNC0(format) > 1)
		f |= WR_FORMAT_STEREO;
	if (format & AFMT_S16_LE)
		f |= WR_FORMAT_16BIT;
	FUNC1(via->lock);
	FUNC3(via, VIA_WR0_FORMAT, f, 4);
	FUNC2(via->lock);

	return (0);
}