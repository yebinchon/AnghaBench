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
struct tty {int dummy; } ;
struct terminal {int /*<<< orphan*/  tm_emulator; struct tty* tm_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct terminal *tm, unsigned int k)
{
	struct tty *tp;
	const char *str;

	tp = tm->tm_tty;
	if (tp == NULL)
		return;

	str = FUNC1(&tm->tm_emulator, k);
	if (str == NULL)
		return;

	FUNC2(tp);
	FUNC5(tp, str, FUNC0(str));
	FUNC4(tp);
	FUNC3(tp);
}