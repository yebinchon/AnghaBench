#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int yy_size_t ;
struct yy_buffer_state {int dummy; } ;
typedef  TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_buf_size; char* yy_buf_pos; char* yy_ch_buf; int yy_n_chars; int yy_at_bol; int /*<<< orphan*/  yy_buffer_status; scalar_t__ yy_fill_buffer; scalar_t__ yy_is_interactive; scalar_t__ yy_input_file; scalar_t__ yy_is_our_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  YY_BUFFER_NEW ; 
 char YY_END_OF_BUFFER_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

YY_BUFFER_STATE FUNC3  (char * base, yy_size_t  size )
{
	YY_BUFFER_STATE b;
    
	if ( size < 2 ||
	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
	     base[size-1] != YY_END_OF_BUFFER_CHAR )
		/* They forgot to leave room for the EOB's. */
		return 0;

	b = (YY_BUFFER_STATE) FUNC2(sizeof( struct yy_buffer_state )  );
	if ( ! b )
		FUNC0( "out of dynamic memory in yy_scan_buffer()" );

	b->yy_buf_size = size - 2;	/* "- 2" to take care of EOB's */
	b->yy_buf_pos = b->yy_ch_buf = base;
	b->yy_is_our_buffer = 0;
	b->yy_input_file = 0;
	b->yy_n_chars = b->yy_buf_size;
	b->yy_is_interactive = 0;
	b->yy_at_bol = 1;
	b->yy_fill_buffer = 0;
	b->yy_buffer_status = YY_BUFFER_NEW;

	FUNC1(b  );

	return b;
}