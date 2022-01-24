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
struct lltable {struct lltable* lle_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_LLTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct lltable*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct lltable *llt)
{

	FUNC0(llt->lle_head, M_LLTABLE);
	FUNC0(llt, M_LLTABLE);
}