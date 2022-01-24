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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char CNL ; 
 int /*<<< orphan*/  ECHO ; 
 int /*<<< orphan*/  ECHONL ; 
 int /*<<< orphan*/  l ; 
 int FUNC1 (struct tty*,char,int) ; 

__attribute__((used)) static int
FUNC2(struct tty *tp, char c, int quote)
{

	/*
	 * Only echo characters when ECHO is turned on, or ECHONL when
	 * the character is an unquoted newline.
	 */
	if (!FUNC0(l, ECHO) &&
	    (!FUNC0(l, ECHONL) || c != CNL || quote))
		return (0);

	return FUNC1(tp, c, quote);
}