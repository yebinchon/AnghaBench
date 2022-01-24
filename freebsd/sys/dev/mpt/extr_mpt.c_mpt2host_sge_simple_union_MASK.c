#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  High; int /*<<< orphan*/  Low; } ;
struct TYPE_4__ {TYPE_1__ Address64; } ;
typedef  int /*<<< orphan*/  SGE_SIMPLE_UNION ;

/* Variables and functions */
 int /*<<< orphan*/  FlagsLength ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ u ; 

void
FUNC1(SGE_SIMPLE_UNION *sge)
{

	FUNC0(sge, FlagsLength);
	FUNC0(sge, u.Address64.Low);
	FUNC0(sge, u.Address64.High);
}