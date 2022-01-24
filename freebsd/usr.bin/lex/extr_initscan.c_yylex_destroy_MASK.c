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
 scalar_t__ YY_CURRENT_BUFFER ; 
 int /*<<< orphan*/ * YY_CURRENT_BUFFER_LVALUE ; 
 int /*<<< orphan*/ * yy_buffer_stack ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * yy_start_stack ; 
 int /*<<< orphan*/ * yy_state_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4  (void)
{
    
    /* Pop the buffer stack, destroying each element. */
	while(YY_CURRENT_BUFFER){
		FUNC0(YY_CURRENT_BUFFER  );
		YY_CURRENT_BUFFER_LVALUE = NULL;
		FUNC3();
	}

	/* Destroy the stack itself. */
	FUNC2((yy_buffer_stack) );
	(yy_buffer_stack) = NULL;

    /* Destroy the start condition stack. */
        FUNC2((yy_start_stack)  );
        (yy_start_stack) = NULL;

    FUNC2 ( (yy_state_buf) );
    (yy_state_buf)  = NULL;

    /* Reset the globals. This is important in a non-reentrant scanner so the next time
     * yylex() is called, initialization will occur. */
    FUNC1( );

    return 0;
}