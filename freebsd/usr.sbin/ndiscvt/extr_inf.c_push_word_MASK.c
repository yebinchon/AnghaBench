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
 scalar_t__ W_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ idx ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*) ; 
 char const** words ; 

void
FUNC3 (const char *w)
{

	if (idx == W_MAX) {
		FUNC1(stderr, "too many words; try bumping W_MAX in inf.h\n");
		FUNC0(1);
	}

	if (w && FUNC2(w))
		words[idx++] = w;
	else
		words[idx++] = NULL;
	return;
}