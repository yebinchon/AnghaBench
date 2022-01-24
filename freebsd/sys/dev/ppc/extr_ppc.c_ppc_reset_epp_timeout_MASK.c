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
struct ppc_data {int dummy; } ;

/* Variables and functions */
 char FUNC0 (struct ppc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ppc_data*,char) ; 

__attribute__((used)) static void
FUNC2(struct ppc_data *ppc)
{
	char r;

	r = FUNC0(ppc);
	FUNC1(ppc, r | 0x1);
	FUNC1(ppc, r & 0xfe);

	return;
}