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
struct dataset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct dataset*) ; 
 scalar_t__ FUNC2 (struct dataset*) ; 
 scalar_t__ FUNC3 (struct dataset*) ; 
 scalar_t__ FUNC4 (struct dataset*) ; 

__attribute__((used)) static void
FUNC5(struct dataset *ds)
{
	FUNC0(FUNC3(ds));
	FUNC0(FUNC2(ds));
	FUNC0(FUNC1(ds) - FUNC4(ds));
	FUNC0(FUNC1(ds) + FUNC4(ds));
}