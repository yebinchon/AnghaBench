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
struct twe_request {int /*<<< orphan*/  tr_sc; int /*<<< orphan*/ * tr_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dumping ; 
 int /*<<< orphan*/  FUNC2 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct twe_request *tr)
{
    FUNC1(4);

    if (!dumping)
	FUNC0(tr->tr_sc);
    if (tr->tr_private != NULL)
	FUNC3(tr->tr_sc, "tr_private != NULL");
    FUNC2(tr);
}