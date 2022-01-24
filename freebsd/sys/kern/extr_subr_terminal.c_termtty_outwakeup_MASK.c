#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct terminal {int tm_flags; TYPE_1__* tm_class; int /*<<< orphan*/  tm_emulator; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tc_bell ) (struct terminal*) ;int /*<<< orphan*/  (* tc_done ) (struct terminal*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terminal*) ; 
 int /*<<< orphan*/  FUNC1 (struct terminal*) ; 
 unsigned int TF_BELL ; 
 int TF_MUTE ; 
 int /*<<< orphan*/  FUNC2 (struct terminal*) ; 
 int /*<<< orphan*/  FUNC3 (struct terminal*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 struct terminal* FUNC5 (struct tty*) ; 
 size_t FUNC6 (struct tty*,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct tty *tp)
{
	struct terminal *tm = FUNC5(tp);
	char obuf[128];
	size_t olen;
	unsigned int flags = 0;

	while ((olen = FUNC6(tp, obuf, sizeof obuf)) > 0) {
		FUNC0(tm);
		if (!(tm->tm_flags & TF_MUTE)) {
			tm->tm_flags &= ~TF_BELL;
			FUNC4(&tm->tm_emulator, obuf, olen);
			flags |= tm->tm_flags;
		}
		FUNC1(tm);
	}

	FUNC0(tm);
	if (!(tm->tm_flags & TF_MUTE))
		tm->tm_class->tc_done(tm);
	FUNC1(tm);
	if (flags & TF_BELL)
		tm->tm_class->tc_bell(tm);
}