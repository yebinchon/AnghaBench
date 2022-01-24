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
typedef  int /*<<< orphan*/  des_key_schedule ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(caddr_t key, u_int8_t *blk)
{
	des_key_schedule *p = (des_key_schedule *) key;

	FUNC0(blk, blk, p[0], DES_ENCRYPT);
}