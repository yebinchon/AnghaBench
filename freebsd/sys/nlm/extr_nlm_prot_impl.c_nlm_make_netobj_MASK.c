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
struct netobj {size_t n_len; int /*<<< orphan*/  n_bytes; } ;
struct malloc_type {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (size_t,struct malloc_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

void
FUNC2(struct netobj *dst, caddr_t src, size_t srcsize,
    struct malloc_type *type)
{

	dst->n_len = srcsize;
	dst->n_bytes = FUNC0(srcsize, type, M_WAITOK);
	FUNC1(dst->n_bytes, src, srcsize);
}