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
struct configuration {int dummy; } ;
typedef  int /*<<< orphan*/  fields ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct configuration*,char const*,char const**,int*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct configuration*,char const*,char const**,int*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 int FUNC10 (char*,int,int) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct configuration*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct configuration*,int) ; 
 int FUNC24 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 

int
FUNC26(struct configuration *config,
	const char *fname, char const **error_str, int *error_line)
{
	FILE	*fin;
	char	buffer[255];
	char	*fields[128];
	int	field_count, line_num, value;
	int	res;

	FUNC1(parse_config_file);
	FUNC3(config != NULL);
	FUNC3(fname != NULL);

	fin = FUNC9(fname, "r");
	if (fin == NULL) {
		FUNC2(parse_config_file);
		return (-1);
	}

	res = 0;
	line_num = 0;
	FUNC13(buffer, 0, sizeof(buffer));
	while ((res == 0) && (FUNC8(buffer, sizeof(buffer) - 1, fin) != NULL)) {
		field_count = FUNC24(buffer, fields, sizeof(fields));
		++line_num;

		if (field_count == 0)
			continue;

		switch (fields[0][0]) {
		case '#':
		case '\0':
			continue;
		case 'e':
			if ((field_count == 3) &&
			(FUNC25(fields[0], "enable-cache") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC12(fields[2])) != -1)) {
				FUNC6(config, fields[1], value);
				continue;
			}
			break;
		case 'd':
			if ((field_count == 2) &&
			(FUNC25(fields[0], "debug-level") == 0) &&
			((value = FUNC10(fields[1], 0, 10)) != -1)) {
				continue;
			}
			break;
		case 'p':
			if ((field_count == 3) &&
			(FUNC25(fields[0], "positive-time-to-live") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC10(fields[2], 0, -1)) != -1)) {
				FUNC21(config,
					fields[1], value);
				continue;
			} else if ((field_count == 3) &&
			(FUNC25(fields[0], "positive-confidence-threshold") == 0) &&
			((value = FUNC10(fields[2], 1, -1)) != -1)) {
				FUNC19(config,
					fields[1], value);
				continue;
			} else if ((field_count == 3) &&
			(FUNC25(fields[0], "positive-policy") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC11(fields[2])) != -1)) {
				FUNC20(config, fields[1], value);
				continue;
			} else if ((field_count == 3) &&
			(FUNC25(fields[0], "perform-actual-lookups") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC12(fields[2])) != -1)) {
				FUNC18(config, fields[1],
					value);
				continue;
			}
			break;
		case 'n':
			if ((field_count == 3) &&
			(FUNC25(fields[0], "negative-time-to-live") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC10(fields[2], 0, -1)) != -1)) {
				FUNC17(config,
					fields[1], value);
				continue;
			} else if ((field_count == 3) &&
			(FUNC25(fields[0], "negative-confidence-threshold") == 0) &&
			((value = FUNC10(fields[2], 1, -1)) != -1)) {
				FUNC15(config,
					fields[1], value);
				continue;
			} else if ((field_count == 3) &&
			(FUNC25(fields[0], "negative-policy") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC11(fields[2])) != -1)) {
				FUNC16(config,
					fields[1], value);
				continue;
			}
			break;
		case 's':
			if ((field_count == 3) &&
			(FUNC25(fields[0], "suggested-size") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC10(fields[2], 1, -1)) != -1)) {
				FUNC22(config, fields[1], value);
				continue;
			}
			break;
		case 't':
			if ((field_count == 2) &&
			(FUNC25(fields[0], "threads") == 0) &&
			((value = FUNC10(fields[1], 1, -1)) != -1)) {
				FUNC23(config, value);
				continue;
			}
			break;
		case 'k':
			if ((field_count == 3) &&
			(FUNC25(fields[0], "keep-hot-count") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC10(fields[2], 0, -1)) != -1)) {
				FUNC14(config,
					fields[1], value);
				continue;
			}
			break;
		case 'c':
			if ((field_count == 3) &&
			(FUNC25(fields[0], "check-files") == 0) &&
			(FUNC4(fields[1]) == 0) &&
			((value = FUNC12(fields[2])) != -1)) {
				FUNC5(config,
					fields[1], value);
				continue;
			}
			break;
		default:
			break;
		}

		FUNC0("config file parser", "error in file "
			"%s on line %d", fname, line_num);
		*error_str = "syntax error";
		*error_line = line_num;
		res = -1;
	}
	FUNC7(fin);

	FUNC2(parse_config_file);
	return (res);
}