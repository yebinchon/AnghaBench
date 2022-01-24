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
struct filed {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct filed*,int /*<<< orphan*/ ) ; 
 struct filed* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  fhead ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static int
FUNC3(struct filed *f0)
{
	struct filed *f;

	f = FUNC1(1, sizeof(*f));
	if (f == NULL)
		FUNC2(1, "malloc failed");
	*f = *f0;
	FUNC0(&fhead, f, next);

	return (0);
}