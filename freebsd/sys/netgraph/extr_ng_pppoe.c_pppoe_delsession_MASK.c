#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
typedef  TYPE_2__* sessp ;
typedef  TYPE_3__* priv_p ;
struct TYPE_9__ {TYPE_1__* sesshash; } ;
struct TYPE_8__ {int /*<<< orphan*/  Session_ID; int /*<<< orphan*/  hook; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sessions ; 

__attribute__((used)) static void
FUNC6(sessp sp)
{
	const priv_p	privp = FUNC2(FUNC1(sp->hook));
	uint16_t	hash = FUNC3(sp->Session_ID);

	FUNC4(&privp->sesshash[hash].mtx);
	FUNC0(sp, sessions);
	FUNC5(&privp->sesshash[hash].mtx);
}