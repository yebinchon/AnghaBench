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
typedef  int u_int64_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  P_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static void
FUNC2(Elf32_Ehdr *e, void *p)
{
	u_int64_t offset;
	char *s;

	offset = FUNC0(e, p, P_OFFSET);
	s = (char *)e + offset;
	FUNC1(out, "\ninterp:\n");
	FUNC1(out, "\t%s\n", s);
}