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
struct sline {unsigned long* p_lno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct sline *sline, unsigned long l0, unsigned long l1, int n, unsigned long null_context)
{
	l0 = sline[l0].p_lno[n];
	l1 = sline[l1].p_lno[n];
	FUNC0(" -%lu,%lu", l0, l1-l0-null_context);
}