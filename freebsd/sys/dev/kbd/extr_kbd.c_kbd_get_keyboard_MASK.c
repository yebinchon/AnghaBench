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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** keyboard ; 
 int keyboards ; 

keyboard_t *
FUNC1(int index)
{
	if ((index < 0) || (index >= keyboards))
		return (NULL);
	if (keyboard[index] == NULL)
		return (NULL);
	if (!FUNC0(keyboard[index]))
		return (NULL);
	return (keyboard[index]);
}