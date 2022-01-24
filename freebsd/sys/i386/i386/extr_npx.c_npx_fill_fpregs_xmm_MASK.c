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
struct savexmm {int dummy; } ;
struct save87 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct save87*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct savexmm*,struct save87*) ; 

void
FUNC2(struct savexmm *sv_xmm, struct save87 *sv_87)
{

	FUNC0(sv_87, sizeof(*sv_87));
	FUNC1(sv_xmm, sv_87);
}