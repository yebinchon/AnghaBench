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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(u_int8_t **sched, const u_int8_t *key, int len)
{
	des_key_schedule *p;
	int err;

	p = FUNC0(sizeof (des_key_schedule),
		M_CRYPTO_DATA, M_NOWAIT|M_ZERO);
	if (p != NULL) {
		FUNC1(key, p[0]);
		err = 0;
	} else
		err = ENOMEM;
	*sched = (u_int8_t *) p;
	return err;
}