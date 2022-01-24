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

/* Variables and functions */
 int IDENT_STRICT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 

__attribute__((used)) static const char *FUNC2(int flag)
{
	const char *pgm = FUNC1();

	if (!pgm && flag & IDENT_STRICT)
		FUNC0("Terminal is dumb, but EDITOR unset");

	return pgm;
}