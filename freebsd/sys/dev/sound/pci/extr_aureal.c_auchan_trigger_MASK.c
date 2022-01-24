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
struct au_info {int dummy; } ;
struct au_chinfo {scalar_t__ dir; struct au_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC1 (struct au_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct au_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct au_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data, int go)
{
	struct au_chinfo *ch = data;
	struct au_info *au = ch->parent;

	if (!FUNC0(go))
		return 0;

	if (ch->dir == PCMDIR_PLAY) {
		FUNC2(au, 0x11, (go)? 1 : 0);
		if (go != PCMTRIG_START) {
			FUNC3(au, 0, 0xf800, 0, 4);
			FUNC3(au, 0, 0xf804, 0, 4);
			FUNC1(au, 0x58);
			FUNC1(au, 0x59);
		}
	} else {
	}
	return 0;
}