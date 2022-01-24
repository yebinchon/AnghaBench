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
 int BVMCONS_POLL_HZ ; 
 int /*<<< orphan*/  bvm_timeout ; 
 int /*<<< orphan*/  bvm_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct tty*) ; 
 int hz ; 
 int polltime ; 

__attribute__((used)) static int
FUNC1(struct tty *tp)
{
	polltime = hz / BVMCONS_POLL_HZ;
	if (polltime < 1)
		polltime = 1;
	FUNC0(&bvm_timer, polltime, bvm_timeout, tp);

	return (0);
}