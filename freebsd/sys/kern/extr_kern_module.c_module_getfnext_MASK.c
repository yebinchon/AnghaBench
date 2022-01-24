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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int /*<<< orphan*/  MOD_LOCK_ASSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flink ; 

module_t
FUNC1(module_t mod)
{

	MOD_LOCK_ASSERT;
	return (FUNC0(mod, flink));
}