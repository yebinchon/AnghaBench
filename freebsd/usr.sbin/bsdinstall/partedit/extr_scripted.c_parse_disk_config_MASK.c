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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static
int FUNC5(char *input)
{
	char *ap;
	char *disk = NULL, *scheme = NULL, *partconfig = NULL;

	while (input != NULL && *input != 0) {
		if (FUNC1(*input)) {
			input++;
			continue;
		}

		switch(*input) {
		case '{':
			input++;
			partconfig = FUNC3(input, '}');
			if (partconfig == NULL) {
				FUNC0(stderr, "Malformed partition setup "
				    "string: %s\n", input);
				return (1);
			}
			*partconfig = '\0';
			ap = partconfig+1;
			partconfig = input;
			input = ap;
			break;
		default:
			if (disk == NULL)
				disk = FUNC4(&input, " \t\n");
			else if (scheme == NULL)
				scheme = FUNC4(&input, " \t\n");
			else {
				FUNC0(stderr, "Unknown directive: %s\n",
				    FUNC4(&input, " \t\n"));
				return (1);
			}
		}
	} while (input != NULL && *input != 0);

	if (disk != NULL)
		return (FUNC2(disk, scheme, partconfig));

	return (0);
}