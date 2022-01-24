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
struct twe_request {scalar_t__ tr_status; TYPE_1__* tr_sc; int /*<<< orphan*/  tr_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  twe_io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 scalar_t__ TWE_CMD_BUSY ; 
 scalar_t__ TWE_CMD_COMPLETE ; 
 int /*<<< orphan*/  TWE_CMD_SLEEPER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(struct twe_request *tr)
{

    FUNC1(4);

    FUNC0(tr->tr_sc);
    tr->tr_flags |= TWE_CMD_SLEEPER;
    tr->tr_status = TWE_CMD_BUSY;
    FUNC3(tr);
    FUNC4(tr->tr_sc);
    while (tr->tr_status == TWE_CMD_BUSY)
	FUNC2(tr, &tr->tr_sc->twe_io_lock, PRIBIO, "twewait", 0);
    
    return(tr->tr_status != TWE_CMD_COMPLETE);
}