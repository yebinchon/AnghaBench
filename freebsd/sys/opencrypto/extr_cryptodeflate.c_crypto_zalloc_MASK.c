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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC1(void *nil, u_int type, u_int size)
{
	void *ptr;

	ptr = FUNC0(type *size, M_CRYPTO_DATA, M_NOWAIT);
	return ptr;
}