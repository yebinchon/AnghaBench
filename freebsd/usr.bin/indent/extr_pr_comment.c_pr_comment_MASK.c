#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int comment_delimiter_on_blankline; int max_col; int unindent_displace; int ind_size; int block_comment_max_col; int decl_com_ind; int com_ind; int tabsize; scalar_t__ star_comment_cont; scalar_t__ blanklines_before_blockcomments; int /*<<< orphan*/  format_col1_comments; int /*<<< orphan*/  format_block_comments; } ;
struct TYPE_3__ {int just_saw_decl; int box_com; int com_col; int ind_level; int n_comment_delta; scalar_t__ last_token; int use_ff; int last_nl; scalar_t__ comment_delta; scalar_t__ decl_on_line; scalar_t__ col_1; int /*<<< orphan*/  out_coms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* buf_end ; 
 char* buf_ptr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ e_code ; 
 char* e_com ; 
 scalar_t__ e_lab ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  had_eof ; 
 char* in_buffer ; 
 scalar_t__ lbrace ; 
 int /*<<< orphan*/  line_no ; 
 int /*<<< orphan*/  FUNC7 (char*,char,int) ; 
 TYPE_2__ opt ; 
 int prefix_blankline_requested ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__ ps ; 
 scalar_t__ s_code ; 
 char* s_com ; 
 scalar_t__ s_lab ; 
 char* save_com ; 
 char* sc_buf ; 
 int sc_size ; 

void
FUNC9(void)
{
    int         now_col;	/* column we are in now */
    int         adj_max_col;	/* Adjusted max_col for when we decide to
				 * spill comments over the right margin */
    char       *last_bl;	/* points to the last blank in the output
				 * buffer */
    char       *t_ptr;		/* used for moving string */
    int         break_delim = opt.comment_delimiter_on_blankline;
    int         l_just_saw_decl = ps.just_saw_decl;

    adj_max_col = opt.max_col;
    ps.just_saw_decl = 0;
    last_bl = NULL;		/* no blanks found so far */
    ps.box_com = false;		/* at first, assume that we are not in
					 * a boxed comment or some other
					 * comment that should not be touched */
    ++ps.out_coms;		/* keep track of number of comments */

    /* Figure where to align and how to treat the comment */

    if (ps.col_1 && !opt.format_col1_comments) {	/* if comment starts in column
						 * 1 it should not be touched */
	ps.box_com = true;
	break_delim = false;
	ps.com_col = 1;
    }
    else {
	if (*buf_ptr == '-' || *buf_ptr == '*' ||
	    (*buf_ptr == '\n' && !opt.format_block_comments)) {
	    ps.box_com = true;	/* A comment with a '-' or '*' immediately
				 * after the /+* is assumed to be a boxed
				 * comment. A comment with a newline
				 * immediately after the /+* is assumed to
				 * be a block comment and is treated as a
				 * box comment unless format_block_comments
				 * is nonzero (the default). */
	    break_delim = false;
	}
	if ( /* ps.bl_line && */ (s_lab == e_lab) && (s_code == e_code)) {
	    /* klg: check only if this line is blank */
	    /*
	     * If this (*and previous lines are*) blank, dont put comment way
	     * out at left
	     */
	    ps.com_col = (ps.ind_level - opt.unindent_displace) * opt.ind_size + 1;
	    adj_max_col = opt.block_comment_max_col;
	    if (ps.com_col <= 1)
		ps.com_col = 1 + !opt.format_col1_comments;
	}
	else {
	    int target_col;
	    break_delim = false;
	    if (s_code != e_code)
		target_col = FUNC3(FUNC1(), s_code);
	    else {
		target_col = 1;
		if (s_lab != e_lab)
		    target_col = FUNC3(FUNC2(), s_lab);
	    }
	    ps.com_col = ps.decl_on_line || ps.ind_level == 0 ? opt.decl_com_ind : opt.com_ind;
	    if (ps.com_col <= target_col)
		ps.com_col = opt.tabsize * (1 + (target_col - 1) / opt.tabsize) + 1;
	    if (ps.com_col + 24 > adj_max_col)
		adj_max_col = ps.com_col + 24;
	}
    }
    if (ps.box_com) {
	/*
	 * Find out how much indentation there was originally, because that
	 * much will have to be ignored by pad_output() in dump_line(). This
	 * is a box comment, so nothing changes -- not even indentation.
	 *
	 * The comment we're about to read usually comes from in_buffer,
	 * unless it has been copied into save_com.
	 */
	char *start;

	start = buf_ptr >= save_com && buf_ptr < save_com + sc_size ?
	    sc_buf : in_buffer;
	ps.n_comment_delta = 1 - FUNC4(1, start, buf_ptr - 2);
    }
    else {
	ps.n_comment_delta = 0;
	while (*buf_ptr == ' ' || *buf_ptr == '\t')
	    buf_ptr++;
    }
    ps.comment_delta = 0;
    *e_com++ = '/';		/* put '/' followed by '*' into buffer */
    *e_com++ = '*';
    if (*buf_ptr != ' ' && !ps.box_com)
	*e_com++ = ' ';

    /*
     * Don't put a break delimiter if this is a one-liner that won't wrap.
     */
    if (break_delim)
	for (t_ptr = buf_ptr; *t_ptr != '\0' && *t_ptr != '\n'; t_ptr++) {
	    if (t_ptr >= buf_end)
		FUNC6();
	    if (t_ptr[0] == '*' && t_ptr[1] == '/') {
		if (adj_max_col >= FUNC4(ps.com_col, buf_ptr, t_ptr + 2))
		    break_delim = false;
		break;
	    }
	}

    if (break_delim) {
	char       *t = e_com;
	e_com = s_com + 2;
	*e_com = 0;
	if (opt.blanklines_before_blockcomments && ps.last_token != lbrace)
	    prefix_blankline_requested = 1;
	FUNC5();
	e_com = s_com = t;
	if (!ps.box_com && opt.star_comment_cont)
	    *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
    }

    /* Start to copy the comment */

    while (1) {			/* this loop will go until the comment is
				 * copied */
	switch (*buf_ptr) {	/* this checks for various spcl cases */
	case 014:		/* check for a form feed */
	    FUNC0(3);
	    if (!ps.box_com) {	/* in a text comment, break the line here */
		ps.use_ff = true;
		/* fix so dump_line uses a form feed */
		FUNC5();
		last_bl = NULL;
		if (!ps.box_com && opt.star_comment_cont)
		    *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
		while (*++buf_ptr == ' ' || *buf_ptr == '\t')
		    ;
	    }
	    else {
		if (++buf_ptr >= buf_end)
		    FUNC6();
		*e_com++ = 014;
	    }
	    break;

	case '\n':
	    if (had_eof) {	/* check for unexpected eof */
		FUNC8("Unterminated comment\n");
		FUNC5();
		return;
	    }
	    last_bl = NULL;
	    FUNC0(4);
	    if (ps.box_com || ps.last_nl) {	/* if this is a boxed comment,
						 * we dont ignore the newline */
		if (s_com == e_com)
		    *e_com++ = ' ';
		if (!ps.box_com && e_com - s_com > 3) {
		    FUNC5();
		    if (opt.star_comment_cont)
			*e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
		}
		FUNC5();
		if (!ps.box_com && opt.star_comment_cont)
		    *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
	    }
	    else {
		ps.last_nl = 1;
		if (*(e_com - 1) == ' ' || *(e_com - 1) == '\t')
		    last_bl = e_com - 1;
		/*
		 * if there was a space at the end of the last line, remember
		 * where it was
		 */
		else {		/* otherwise, insert one */
		    last_bl = e_com;
		    *e_com++ = ' ';
		}
	    }
	    ++line_no;		/* keep track of input line number */
	    if (!ps.box_com) {
		int         nstar = 1;
		do {		/* flush any blanks and/or tabs at start of
				 * next line */
		    if (++buf_ptr >= buf_end)
			FUNC6();
		    if (*buf_ptr == '*' && --nstar >= 0) {
			if (++buf_ptr >= buf_end)
			    FUNC6();
			if (*buf_ptr == '/')
			    goto end_of_comment;
		    }
		} while (*buf_ptr == ' ' || *buf_ptr == '\t');
	    }
	    else if (++buf_ptr >= buf_end)
		FUNC6();
	    break;		/* end of case for newline */

	case '*':		/* must check for possibility of being at end
				 * of comment */
	    if (++buf_ptr >= buf_end)	/* get to next char after * */
		FUNC6();
	    FUNC0(4);
	    if (*buf_ptr == '/') {	/* it is the end!!! */
	end_of_comment:
		if (++buf_ptr >= buf_end)
		    FUNC6();
		if (break_delim) {
		    if (e_com > s_com + 3) {
			FUNC5();
		    }
		    else
			s_com = e_com;
		    *e_com++ = ' ';
		}
		if (e_com[-1] != ' ' && e_com[-1] != '\t' && !ps.box_com)
		    *e_com++ = ' ';	/* ensure blank before end */
		*e_com++ = '*', *e_com++ = '/', *e_com = '\0';
		ps.just_saw_decl = l_just_saw_decl;
		return;
	    }
	    else		/* handle isolated '*' */
		*e_com++ = '*';
	    break;
	default:		/* we have a random char */
	    now_col = FUNC4(ps.com_col, s_com, e_com);
	    do {
		FUNC0(1);
		*e_com = *buf_ptr++;
		if (buf_ptr >= buf_end)
		    FUNC6();
		if (*e_com == ' ' || *e_com == '\t')
		    last_bl = e_com;	/* remember we saw a blank */
		++e_com;
		now_col++;
	    } while (!FUNC7("*\n\r\b\t", *buf_ptr, 6) &&
		(now_col <= adj_max_col || !last_bl));
	    ps.last_nl = false;
	    if (now_col > adj_max_col && !ps.box_com && e_com[-1] > ' ') {
		/*
		 * the comment is too long, it must be broken up
		 */
		if (last_bl == NULL) {
		    FUNC5();
		    if (!ps.box_com && opt.star_comment_cont)
			*e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
		    break;
		}
		*e_com = '\0';
		e_com = last_bl;
		FUNC5();
		if (!ps.box_com && opt.star_comment_cont)
		    *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
		for (t_ptr = last_bl + 1; *t_ptr == ' ' || *t_ptr == '\t';
		    t_ptr++)
			;
		last_bl = NULL;
		/*
		 * t_ptr will be somewhere between e_com (dump_line() reset)
		 * and l_com. So it's safe to copy byte by byte from t_ptr
		 * to e_com without any CHECK_SIZE_COM().
		 */
		while (*t_ptr != '\0') {
		    if (*t_ptr == ' ' || *t_ptr == '\t')
			last_bl = e_com;
		    *e_com++ = *t_ptr++;
		}
	    }
	    break;
	}
    }
}