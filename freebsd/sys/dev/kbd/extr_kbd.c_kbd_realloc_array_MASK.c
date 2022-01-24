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
typedef  int /*<<< orphan*/  keyboard_t ;
typedef  int /*<<< orphan*/  keyboard_switch_t ;

/* Variables and functions */
 scalar_t__ ARRAY_DELTA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** kbdsw ; 
 int /*<<< orphan*/ ** keyboard ; 
 int keyboards ; 
 int /*<<< orphan*/ ** FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(void)
{
	keyboard_t **new_kbd;
	keyboard_switch_t **new_kbdsw;
	int newsize;
	int s;

	s = FUNC5();
	newsize = FUNC4(keyboards + ARRAY_DELTA, ARRAY_DELTA);
	new_kbd = FUNC2(sizeof(*new_kbd)*newsize, M_DEVBUF, M_NOWAIT|M_ZERO);
	if (new_kbd == NULL) {
		FUNC6(s);
		return (ENOMEM);
	}
	new_kbdsw = FUNC2(sizeof(*new_kbdsw)*newsize, M_DEVBUF,
			    M_NOWAIT|M_ZERO);
	if (new_kbdsw == NULL) {
		FUNC1(new_kbd, M_DEVBUF);
		FUNC6(s);
		return (ENOMEM);
	}
	FUNC0(keyboard, new_kbd, sizeof(*keyboard)*keyboards);
	FUNC0(kbdsw, new_kbdsw, sizeof(*kbdsw)*keyboards);
	if (keyboards > 1) {
		FUNC1(keyboard, M_DEVBUF);
		FUNC1(kbdsw, M_DEVBUF);
	}
	keyboard = new_kbd;
	kbdsw = new_kbdsw;
	keyboards = newsize;
	FUNC6(s);

	if (bootverbose)
		FUNC3("kbd: new array size %d\n", keyboards);

	return (0);
}