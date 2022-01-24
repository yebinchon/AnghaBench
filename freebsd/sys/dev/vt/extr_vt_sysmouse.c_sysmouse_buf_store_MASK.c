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

/* Variables and functions */
 unsigned int MOUSE_SYS_PACKETSIZE ; 
 int /*<<< orphan*/  SIGIO ; 
 int SM_ASYNC ; 
 unsigned int SYSMOUSE_MAXFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sysmouse_buffer ; 
 int /*<<< orphan*/  sysmouse_bufpoll ; 
 int sysmouse_flags ; 
 unsigned int sysmouse_length ; 
 int /*<<< orphan*/ * sysmouse_sigio ; 
 int /*<<< orphan*/  sysmouse_sleep ; 
 unsigned int sysmouse_start ; 

__attribute__((used)) static void
FUNC4(const unsigned char buf[MOUSE_SYS_PACKETSIZE])
{
	unsigned int idx;

	if (sysmouse_buffer == NULL || sysmouse_length == SYSMOUSE_MAXFRAMES)
		return;

	idx = (sysmouse_start + sysmouse_length) % SYSMOUSE_MAXFRAMES;
	FUNC1(sysmouse_buffer + idx * MOUSE_SYS_PACKETSIZE, buf,
	    MOUSE_SYS_PACKETSIZE);
	sysmouse_length++;
	FUNC0(&sysmouse_sleep);
	FUNC3(&sysmouse_bufpoll);
	if (sysmouse_flags & SM_ASYNC && sysmouse_sigio != NULL)
		FUNC2(&sysmouse_sigio, SIGIO, 0);
}