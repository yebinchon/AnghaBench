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

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

__attribute__((used)) static __inline int
FUNC4(struct tty *tp)
{

	FUNC1(tp);

	if (FUNC0(tp) || !FUNC2(tp)) {
		/* Device is already gone. */
		FUNC3(tp);
		return (ENXIO);
	}

	return (0);
}