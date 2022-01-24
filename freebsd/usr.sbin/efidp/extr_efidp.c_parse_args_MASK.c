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
 int flag_efi ; 
 int flag_format ; 
 int flag_parse ; 
 int flag_unix ; 
 int FUNC0 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(int argc, char **argv)
{
	int ch;

	while ((ch = FUNC0(argc, argv, "efpu",
		    longopts, NULL)) != -1) {
		switch (ch) {
		case 'e':
			flag_efi++;
			break;
		case 'f':
			flag_format++;
			break;
		case 'p':
			flag_parse++;
			break;
		case 'u':
			flag_unix++;
			break;
		default:
			FUNC1();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc >= 1)
		FUNC1();
	
	if (flag_parse + flag_format + flag_efi + flag_unix != 1) {
		FUNC2("Can only use one of -p (--parse), "
		    "and -f (--format)");
		FUNC1();
	}
}