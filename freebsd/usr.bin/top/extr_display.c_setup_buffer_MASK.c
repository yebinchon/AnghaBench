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
 int SETUPBUFFER_MIN_SCREENWIDTH ; 
 int SETUPBUFFER_REQUIRED_ADDBUFSIZ ; 
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int screen_width ; 
 int setup_buffer_bufsiz ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(char *buffer, int addlen)
{
    size_t len, old_len;
    char *new_buffer;

    setup_buffer_bufsiz = screen_width;
    if (setup_buffer_bufsiz < SETUPBUFFER_MIN_SCREENWIDTH)
    {
	setup_buffer_bufsiz = SETUPBUFFER_MIN_SCREENWIDTH;
    }

    len = setup_buffer_bufsiz + addlen + SETUPBUFFER_REQUIRED_ADDBUFSIZ;
    new_buffer = FUNC0(len, sizeof(char));
    if (new_buffer == NULL)
    {
	FUNC1(4, "can't allocate sufficient memory");
    }
    if (buffer != NULL)
    {
	old_len = FUNC4(buffer);
	FUNC3(new_buffer, buffer, old_len < len - 1 ? old_len : len - 1);
	FUNC2(buffer);
    }

    return new_buffer;
}