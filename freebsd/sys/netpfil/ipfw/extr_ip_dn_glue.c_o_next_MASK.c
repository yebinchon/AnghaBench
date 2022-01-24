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
typedef  void dn_id ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC2(struct dn_id **o, int len, int type)
{
	struct dn_id *ret = *o;
	FUNC1(ret, len, type, 0);
	*o = FUNC0(*o, len);
	return ret;
}