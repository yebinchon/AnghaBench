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
struct socket {int /*<<< orphan*/  so_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 scalar_t__ FUNC2 (struct socket*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct socket *so = arg;

	if (FUNC2(so))
		FUNC1(so);
	else
		FUNC0(&so->so_snd);
}