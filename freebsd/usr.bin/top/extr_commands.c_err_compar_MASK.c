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
struct errs {int errnum; int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const void *p1, const void *p2)
{
    int result;
    const struct errs * const g1 = (const struct errs * const)p1;
    const struct errs * const g2 = (const struct errs * const)p2;



    if ((result = g1->errnum - g2->errnum) == 0)
    {
	return(FUNC0(g1->arg, g2->arg));
    }
    return(result);
}