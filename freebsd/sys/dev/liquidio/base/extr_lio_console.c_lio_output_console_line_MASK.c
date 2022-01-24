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
typedef  int /*<<< orphan*/  uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_console {char* leftover; int /*<<< orphan*/  (* print ) (struct octeon_device*,int /*<<< orphan*/ ,char*,char*) ;} ;
typedef  size_t int32_t ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC4(struct octeon_device *oct, struct lio_console *console,
			size_t console_num, char *console_buffer,
			int32_t bytes_read)
{
	size_t		len;
	int32_t		i;
	char           *line;

	line = console_buffer;
	for (i = 0; i < bytes_read; i++) {
		/* Output a line at a time, prefixed */
		if (console_buffer[i] == '\n') {
			console_buffer[i] = '\0';
			/* We need to output 'line', prefaced by 'leftover'.
			 * However, it is possible we're being called to
			 * output 'leftover' by itself (in the case of nothing
			 * having been read from the console).
			 *
			 * To avoid duplication, check for this condition.
			 */
			if (console->leftover[0] &&
			    (line != console->leftover)) {
				if (console->print)
					(*console->print)(oct,
							  (uint32_t)console_num,
							console->leftover,line);
				console->leftover[0] = '\0';
			} else {
				if (console->print)
					(*console->print)(oct,
							  (uint32_t)console_num,
							  line, NULL);
			}

			line = &console_buffer[i + 1];
		}
	}

	/* Save off any leftovers */
	if (line != &console_buffer[bytes_read]) {
		console_buffer[bytes_read] = '\0';
		len = FUNC0(console->leftover);
		FUNC1(&console->leftover[len], line,
			sizeof(console->leftover) - len);
	}
}