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
struct mt_status_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int FUNC3 (struct mt_status_data*,char*,int) ; 
 int FUNC4 (int,struct mt_status_data*,char*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(int argc, char **argv, int mtfd, char *xml_str,
	 struct mt_status_data *status_data)
{
	int list = 0, do_set = 0, xml_dump = 0;
	char *param_name = NULL, *param_value = NULL;
	int retval = 0, quiet = 0;
	int c;

	while ((c = FUNC2(argc, argv, "lp:qs:x")) != -1) {
		switch (c) {
		case 'l':
			list = 1;
			break;
		case 'p':
			if (param_name != NULL) {
				FUNC7("Only one parameter name may be "
				    "specified");
				retval = 1;
				goto bailout;
			}
			param_name = FUNC6(optarg);
			break;
		case 'q':
			quiet = 1;
			break;
		case 's':
			if (param_value != NULL) {
				FUNC7("Only one parameter value may be "
				    "specified");
				retval = 1;
				goto bailout;
			}
			param_value = FUNC6(optarg);
			do_set = 1;
			break;
		case 'x':
			xml_dump = 1;
			break;
		default:
			break;
		}
	}

	if ((list + do_set + xml_dump) != 1) {
		FUNC7("You must specify only one of -s, -l or -x");
		retval = 1;
		goto bailout;
	}

	if (xml_dump != 0) {
		FUNC5("%s", xml_str);
		retval = 0;
		goto bailout;
	}

	if (do_set != 0) {
		if (param_name == NULL)
			FUNC0(1, "You must specify -p with -s");

		retval = FUNC4(mtfd, status_data, param_name,
		    param_value);
	} else if (list != 0)
		retval = FUNC3(status_data, param_name, quiet);

bailout:
	FUNC1(param_name);
	FUNC1(param_value);
	return (retval);
}