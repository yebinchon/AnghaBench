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
struct ignentry {int /*<<< orphan*/ * mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ignentry*,int /*<<< orphan*/ ) ; 
 struct ignentry* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  ignores ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *mask)
{
	struct ignentry *ign;

	ign = FUNC1(1, sizeof(*ign));
	if (ign == NULL)
		FUNC2(1, "cannot allocate memory");
	ign->mask = FUNC3(mask);
	if (ign->mask == NULL)
		FUNC2(1, "cannot allocate memory");
	FUNC0(&ignores, ign, next);
}