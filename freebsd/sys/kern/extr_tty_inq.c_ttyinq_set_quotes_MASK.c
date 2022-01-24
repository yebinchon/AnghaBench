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
struct ttyinq_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttyinq_block*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ttyinq_block*,size_t) ; 

__attribute__((used)) static __inline void
FUNC2(struct ttyinq_block *tib, size_t offset,
    size_t length, int value)
{

	if (value) {
		/* Set the bits. */
		for (; length > 0; length--, offset++)
			FUNC1(tib, offset);
	} else {
		/* Unset the bits. */
		for (; length > 0; length--, offset++)
			FUNC0(tib, offset);
	}
}