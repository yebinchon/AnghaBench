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
struct cache_entry {unsigned int ce_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC3(const struct cache_entry *ce,
					     unsigned int mode)
{
	extern int trust_executable_bit, has_symlinks;
	if (!has_symlinks && FUNC1(mode) &&
	    ce && FUNC0(ce->ce_mode))
		return ce->ce_mode;
	if (!trust_executable_bit && FUNC1(mode)) {
		if (ce && FUNC1(ce->ce_mode))
			return ce->ce_mode;
		return FUNC2(0666);
	}
	return FUNC2(mode);
}