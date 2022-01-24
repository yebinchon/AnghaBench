#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  cur_csum ; 
 TYPE_1__ cur_resp ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(void)
{

	FUNC3('#');
	FUNC2(cur_csum);
	FUNC0("-> %.*s\n", (int)cur_resp.len, FUNC1(&cur_resp));
}