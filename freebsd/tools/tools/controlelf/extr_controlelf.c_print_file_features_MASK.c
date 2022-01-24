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
typedef  int u_int32_t ;
struct TYPE_3__ {char* alias; char* desc; int value; } ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 TYPE_1__* featurelist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static bool
FUNC3(Elf *elf, int phcount, int fd, char *filename)
{
	u_int32_t features;
	unsigned long i;

	if (!FUNC0(elf, phcount, fd, &features, NULL)) {
		return (false);
	}

	FUNC2("File '%s' features:\n", filename);
	for (i = 0; i < FUNC1(featurelist); ++i) {
		FUNC2("%s\t\t'%s' is ", featurelist[i].alias,
		    featurelist[i].desc);

		if ((featurelist[i].value & features) == 0)
			FUNC2("un");

		FUNC2("set.\n");
	}
	return (true);
}