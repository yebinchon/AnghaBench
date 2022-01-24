#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* alias; char* desc; } ;

/* Variables and functions */
 TYPE_1__* featurelist ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	size_t i;

	FUNC1("Known features are:\n");
	for (i = 0; i < FUNC0(featurelist); ++i)
		FUNC1("%s\t\t %s\n", featurelist[i].alias,
		    featurelist[i].desc);
}