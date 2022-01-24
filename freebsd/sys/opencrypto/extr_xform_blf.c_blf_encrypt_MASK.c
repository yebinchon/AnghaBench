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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  BF_LONG ;
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(caddr_t key, u_int8_t *blk)
{
	BF_LONG t[2];

	FUNC2(t, blk, sizeof (t));
	t[0] = FUNC3(t[0]);
	t[1] = FUNC3(t[1]);
	/* NB: BF_encrypt expects the block in host order! */
	FUNC0(t, (BF_KEY *) key);
	t[0] = FUNC1(t[0]);
	t[1] = FUNC1(t[1]);
	FUNC2(blk, t, sizeof (t));
}