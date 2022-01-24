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
struct sb_chinfo {int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC1 (struct sb_chinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct sb_chinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data, int go)
{
	struct sb_chinfo *ch = data;

	if (!FUNC0(go))
		return 0;

	FUNC3(ch->buffer, go);
	if (go == PCMTRIG_START)
		FUNC1(ch);
	else
		FUNC2(ch);
	return 0;
}