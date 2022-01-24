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
 int MG_GUARD_ALLLARGE ; 
 unsigned long PAGE_SIZE ; 
 int memguard_frequency ; 
 int /*<<< orphan*/  memguard_frequency_hits ; 
 unsigned long memguard_minsize ; 
 int /*<<< orphan*/  memguard_minsize_reject ; 
 int memguard_options ; 
 int FUNC0 () ; 

__attribute__((used)) static int
FUNC1(unsigned long size)
{

	if (size < memguard_minsize) {
		memguard_minsize_reject++;
		return (0);
	}
	if ((memguard_options & MG_GUARD_ALLLARGE) != 0 && size >= PAGE_SIZE)
		return (1);
	if (memguard_frequency > 0 &&
	    (FUNC0() % 100000) < memguard_frequency) {
		memguard_frequency_hits++;
		return (1);
	}

	return (0);
}