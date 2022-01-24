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
typedef  char u_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 

__attribute__((used)) static char
FUNC5(char c, int pos)
{
	if (FUNC0(c)|| c == '/'|| c == '_' || c == '.' || c == '~' ||
	    (pos != 0 && FUNC2(c))){
		return (c);
	}

	if (c == '\0')
		return (0);

	if (!FUNC1(c) || !FUNC3(c))
		FUNC4("Unexpected character %#2x", (u_int) c);
	else
		FUNC4("Illegal character '%c'", c);

	return (-1);
}