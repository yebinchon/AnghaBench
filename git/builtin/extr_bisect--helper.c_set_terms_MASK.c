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
struct bisect_terms {void* term_bad; void* term_good; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(struct bisect_terms *terms, const char *bad,
		      const char *good)
{
	FUNC0((void *)terms->term_good);
	terms->term_good = FUNC1(good);
	FUNC0((void *)terms->term_bad);
	terms->term_bad = FUNC1(bad);
}