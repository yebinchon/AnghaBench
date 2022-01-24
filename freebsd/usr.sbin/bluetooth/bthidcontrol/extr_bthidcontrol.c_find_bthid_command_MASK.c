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
struct bthid_command {char* command; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static struct bthid_command *
FUNC3(char const *command, struct bthid_command *category)
{ 
	struct bthid_command	*c = NULL;
  
	for (c = category; c->command != NULL; c++) {
		char	*c_end = FUNC1(c->command, ' ');
  
		if (c_end != NULL) {
			int	len = c_end - c->command;
 
			if (FUNC2(command, c->command, len) == 0)
				return (c);
		} else if (FUNC0(command, c->command) == 0)
				return (c);
	}
  
	return (NULL);
}