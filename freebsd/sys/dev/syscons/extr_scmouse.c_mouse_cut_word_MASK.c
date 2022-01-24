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
struct TYPE_4__ {int status; int mouse_pos; int xsize; int /*<<< orphan*/  vtb; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int MOUSE_VISIBLE ; 
 char* cut_buffer ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(scr_stat *scp)
{
    int start;
    int end;
    int sol;
    int eol;
    int c;
    int j;
    int len;

    /*
     * Because we don't have locale information in the kernel,
     * we only distinguish space char and non-space chars.  Punctuation
     * chars, symbols and other regular chars are all treated alike
     * unless user specified SC_CUT_SEPCHARS in his kernel config file.
     */
    if (scp->status & MOUSE_VISIBLE) {
	sol = FUNC2(scp->mouse_pos, scp->xsize);
	eol = sol + scp->xsize;
	c = FUNC3(&scp->vtb, scp->mouse_pos);
	if (FUNC0(c)) {
	    /* blank space */
	    for (j = scp->mouse_pos; j >= sol; --j) {
		c = FUNC3(&scp->vtb, j);
	        if (!FUNC0(c))
		    break;
	    }
	    start = ++j;
	    for (j = scp->mouse_pos; j < eol; ++j) {
		c = FUNC3(&scp->vtb, j);
	        if (!FUNC0(c))
		    break;
	    }
	    end = j - 1;
	} else {
	    /* non-space word */
	    for (j = scp->mouse_pos; j >= sol; --j) {
		c = FUNC3(&scp->vtb, j);
	        if (FUNC0(c))
		    break;
	    }
	    start = ++j;
	    for (j = scp->mouse_pos; j < eol; ++j) {
		c = FUNC3(&scp->vtb, j);
	        if (FUNC0(c))
		    break;
	    }
	    end = j - 1;
	}

	/* copy the found word */
	FUNC1(scp, start, end);
	len = FUNC4(cut_buffer);
	if (cut_buffer[len - 1] == '\r')
	    cut_buffer[len - 1] = '\0';
    }
}