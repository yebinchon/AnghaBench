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
struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tc_opened ) (struct terminal*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terminal*,int /*<<< orphan*/ ) ; 
 struct terminal* FUNC1 (struct tty*) ; 

__attribute__((used)) static void
FUNC2(struct tty *tp)
{
	struct terminal *tm = FUNC1(tp);

	tm->tm_class->tc_opened(tm, 0);
}