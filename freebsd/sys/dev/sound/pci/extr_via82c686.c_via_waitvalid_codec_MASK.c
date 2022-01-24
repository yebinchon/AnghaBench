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
struct via_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  VIA_CODEC_CTL ; 
 int VIA_CODEC_PRIVALID ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct via_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct via_info *via)
{
	int i;

	/* poll until codec valid */
	for (i = 0; (i < TIMEOUT) &&
	    !(FUNC2(via, VIA_CODEC_CTL, 4) & VIA_CODEC_PRIVALID); i++)
		    FUNC0(1);
	if (i >= TIMEOUT) {
		FUNC1("via: codec invalid\n");
		return 1;
	}

	return 0;
}