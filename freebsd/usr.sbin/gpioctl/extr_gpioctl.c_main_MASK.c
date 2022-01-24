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
typedef  scalar_t__ gpio_handle_t ;
struct TYPE_3__ {int g_pin; int g_flags; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 scalar_t__ GPIO_INVALID_HANDLE ; 
#define  PIN_TYPE_NAME 129 
#define  PIN_TYPE_NUMBER 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int,int) ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC11 (scalar_t__,int,char*) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int FUNC15 (char*) ; 
 int FUNC16 (char*,int*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int
FUNC18(int argc, char **argv)
{
	int i;
	gpio_config_t pin;
	gpio_handle_t handle;
	char *ctlfile = NULL;
	int pinn, pinv, pin_type, ch;
	int flags, flag, ok;
	int config, list, name, toggle, verbose;

	config = toggle = verbose = list = name = pin_type = 0;

	while ((ch = FUNC4(argc, argv, "cf:lntvNp")) != -1) {
		switch (ch) {
		case 'c':
			config = 1;
			break;
		case 'f':
			ctlfile = optarg;
			break;
		case 'l':
			list = 1;
			break;
		case 'n':
			name = 1;
			break;
		case 'N':
			pin_type = PIN_TYPE_NAME;
			break;
		case'p':
			pin_type = PIN_TYPE_NUMBER;
			break;
		case 't':
			toggle = 1;
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC17();
			break;
		}
	}
	argv += optind;
	argc -= optind;
	if (ctlfile == NULL)
		handle = FUNC6(0);
	else
		handle = FUNC7(ctlfile);
	if (handle == GPIO_INVALID_HANDLE) {
		FUNC13("gpio_open");
		FUNC1(1);
	}

	if (list) {
		FUNC0(handle, verbose);
		FUNC5(handle);
		FUNC1(0);
	}

	if (argc == 0)
		FUNC17();

	/* Find the pin number by the name */
	switch (pin_type) {
	default:
		/* First test if it is a pin number */
		pinn = FUNC16(argv[0], &ok);
		if (ok) {
			/* Test if we have any pin named by this number and tell the user */
			if (FUNC3(handle, argv[0]) != -1)
				FUNC2("%s is also a pin name, use -p or -N\n", argv[0]);
		} else {
			/* Test if it is a name */
			if ((pinn = FUNC3(handle, argv[0])) == -1)
				FUNC2("Can't find pin named \"%s\"\n", argv[0]);
		}
		break;
	case PIN_TYPE_NUMBER:
		pinn = FUNC16(argv[0], &ok);
		if (!ok)
			FUNC2("Invalid pin number: %s\n", argv[0]);
		break;
	case PIN_TYPE_NAME:
		if ((pinn = FUNC3(handle, argv[0])) == -1)
			FUNC2("Can't find pin named \"%s\"\n", argv[0]);
		break;
	}

	/* Set the pin name. */
	if (name) {
		if (argc != 2)
			FUNC17();
		if (FUNC11(handle, pinn, argv[1]) < 0) {
			FUNC13("gpio_pin_set_name");
			FUNC1(1);
		}
		FUNC1(0);
	}

	if (toggle) {
		/*
                * -t pin assumes no additional arguments
                */
		if (argc > 1)
			FUNC17();
		if (FUNC12(handle, pinn) < 0) {
			FUNC13("gpio_pin_toggle");
			FUNC1(1);
		}
		FUNC5(handle);
		FUNC1(0);
	}

	if (config) {
		flags = 0;
		for (i = 1; i < argc; i++) {
			flag = 	FUNC15(argv[i]);
			if (flag < 0)
				FUNC2("Invalid flag: %s\n", argv[i]);
			flags |= flag;
		}
		pin.g_pin = pinn;
		pin.g_flags = flags;
		if (FUNC10(handle, &pin) < 0) {
			FUNC13("gpio_pin_set_flags");
			FUNC1(1);
		}
		FUNC1(0);
	}

	/*
	 * Last two cases - set value or print value
	 */
	if ((argc == 0) || (argc > 2))
		FUNC17();

	/*
	 * Read pin value
	 */
	if (argc == 1) {
		pinv = FUNC8(handle, pinn);
		if (pinv < 0) {
			FUNC13("gpio_pin_get");
			FUNC1(1);
		}
		FUNC14("%d\n", pinv);
		FUNC1(0);
	}

	/* Is it valid number (0 or 1) ? */
	pinv = FUNC16(argv[1], &ok);
	if (ok == 0 || ((pinv != 0) && (pinv != 1)))
		FUNC2("Invalid pin value: %s\n", argv[1]);

	/*
	 * Set pin value
	 */
	if (FUNC9(handle, pinn, pinv) < 0) {
		FUNC13("gpio_pin_set");
		FUNC1(1);
	}

	FUNC5(handle);
	FUNC1(0);
}