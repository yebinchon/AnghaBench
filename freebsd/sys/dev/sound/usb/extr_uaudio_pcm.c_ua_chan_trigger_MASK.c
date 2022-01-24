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
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int
FUNC3(kobj_t obj, void *data, int go)
{
	if (FUNC0(go)) {
		if (go == PCMTRIG_START) {
			FUNC1(data);
		} else {
			FUNC2(data);
		}
	}
	return (0);
}