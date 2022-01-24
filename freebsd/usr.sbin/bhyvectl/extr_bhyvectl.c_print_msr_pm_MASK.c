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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char,char) ; 

__attribute__((used)) static inline void
FUNC2(uint64_t msr, int vcpu, int readable, int writeable)
{

	if (readable || writeable) {
		FUNC1("%-20s[%d]\t\t%c%c\n", FUNC0(msr), vcpu,
			readable ? 'R' : '-', writeable ? 'W' : '-');
	}
}