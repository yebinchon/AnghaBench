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
struct mac_lomac {int /*<<< orphan*/  ml_rangelow; int /*<<< orphan*/  ml_rangehigh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct mac_lomac *rangea, struct mac_lomac *rangeb)
{

	return (FUNC0(&rangeb->ml_rangehigh,
	    &rangea->ml_rangehigh) &&
	    FUNC0(&rangea->ml_rangelow,
	    &rangeb->ml_rangelow));
}