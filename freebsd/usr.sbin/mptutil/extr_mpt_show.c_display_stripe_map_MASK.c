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
typedef  int /*<<< orphan*/  stripe ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *label, U32 StripeMap)
{
	char stripe[5];
	int comma, i;

	comma = 0;
	FUNC1("%s: ", label);
	for (i = 0; StripeMap != 0; i++, StripeMap >>= 1)
		if (StripeMap & 1) {
			FUNC0(stripe, sizeof(stripe), 1 << i);
			if (comma)
				FUNC1(", ");
			FUNC1("%s", stripe);
			comma = 1;
		}
	FUNC1("\n");
}