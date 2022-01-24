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
struct alq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (struct alq*,int /*<<< orphan*/ ) ; 
 scalar_t__ ald_shutingdown ; 
 int /*<<< orphan*/  aq_link ; 

__attribute__((used)) static int
FUNC3(struct alq *alq)
{
	int error;

	error = 0;

	FUNC0();
	if (ald_shutingdown) {
		error = EBUSY;
		goto done;
	}
	FUNC2(alq, aq_link);
done:
	FUNC1();
	return (error);
}