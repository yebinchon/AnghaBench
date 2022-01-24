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
struct ttyfd {int /*<<< orphan*/  rfd; } ;
struct termios {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct termios*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 struct termios tio_stdio_orig ; 
 int /*<<< orphan*/  ttyclose ; 
 scalar_t__ uart_stdio ; 

__attribute__((used)) static void
FUNC4(struct ttyfd *tf)
{
	struct termios orig, new;

	FUNC2(tf->rfd, &orig);
	new = orig;
	FUNC1(&new);
	new.c_cflag |= CLOCAL;
	FUNC3(tf->rfd, TCSANOW, &new);
	if (uart_stdio) {
		tio_stdio_orig = orig;
		FUNC0(ttyclose);
	}
}