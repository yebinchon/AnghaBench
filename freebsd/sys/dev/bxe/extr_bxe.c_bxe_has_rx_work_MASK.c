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
typedef  int uint16_t ;
struct bxe_fastpath {int rx_cq_cons; int /*<<< orphan*/ * rx_cq_cons_sb; } ;

/* Variables and functions */
 int RCQ_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline int
FUNC2(struct bxe_fastpath *fp)
{
    uint16_t rx_cq_cons_sb;

    FUNC1(); /* status block fields can change */
    rx_cq_cons_sb = FUNC0(*fp->rx_cq_cons_sb);
    if ((rx_cq_cons_sb & RCQ_MAX) == RCQ_MAX)
        rx_cq_cons_sb++;
    return (fp->rx_cq_cons != rx_cq_cons_sb);
}