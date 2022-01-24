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
struct term_info {int ti_index; scalar_t__ ti_desc; scalar_t__ ti_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_GETTERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct term_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC2(int i, struct term_info *tip)
{
	tip->ti_index = i;
	if (FUNC0(0, CONS_GETTERM, tip) == 0)
		return (1);
	FUNC1((char *)tip->ti_name, "unknown", sizeof(tip->ti_name));
	FUNC1((char *)tip->ti_desc, "unknown", sizeof(tip->ti_desc));
	return (0);
}