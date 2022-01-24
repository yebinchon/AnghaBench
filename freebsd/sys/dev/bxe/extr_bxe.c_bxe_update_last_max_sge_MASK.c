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
typedef  int /*<<< orphan*/  uint16_t ;
struct bxe_fastpath {int /*<<< orphan*/  last_max_sge; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct bxe_fastpath *fp,
                        uint16_t            idx)
{
    uint16_t last_max = fp->last_max_sge;

    if (FUNC0(idx, last_max) > 0) {
        fp->last_max_sge = idx;
    }
}