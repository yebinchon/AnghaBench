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
 int header_length ; 
 int screen_width ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,int) ; 

char *
FUNC2(const char *text)
{
	char *s;
	int width;

	s = NULL;
	width = screen_width;
	header_length = FUNC0(text);
	if (header_length >= width) {
		s = FUNC1(text, width);
		if (s == NULL)
			return (NULL);
	}
	return (s);
}