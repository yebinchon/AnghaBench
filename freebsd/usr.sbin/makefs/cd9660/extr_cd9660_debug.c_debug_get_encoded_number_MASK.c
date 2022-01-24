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

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (unsigned char*) ; 
 int FUNC3 (unsigned char*) ; 
 int FUNC4 (unsigned char*) ; 
 int FUNC5 (unsigned char*) ; 
 int FUNC6 (unsigned char*) ; 
 int FUNC7 (unsigned char*) ; 

int
FUNC8(unsigned char* buf, int mode)
{
#if !HAVE_NBTOOL_CONFIG_H
	switch (mode) {
	/* 711: Single bite */
	case 711:
		return FUNC0(buf);

	/* 712: Single signed byte */
	case 712:
		return FUNC1((signed char *)buf);

	/* 721: 16 bit LE */
	case 721:
		return FUNC2(buf);

	/* 731: 32 bit LE */
	case 731:
		return FUNC5(buf);

	/* 722: 16 bit BE */
	case 722:
		return FUNC3(buf);

	/* 732: 32 bit BE */
	case 732:
		return FUNC6(buf);

	/* 723: 16 bit bothE */
	case 723:
		return FUNC4(buf);

	/* 733: 32 bit bothE */
	case 733:
		return FUNC7(buf);
	}
#endif
	return 0;
}