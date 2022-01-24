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
typedef  scalar_t__ Linetype ;
typedef  size_t Comment_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t LS_DIRTY ; 
 size_t LS_HASH ; 
 size_t LS_START ; 
 scalar_t__ LT_ELFALSE ; 
 scalar_t__ LT_ELIF ; 
 scalar_t__ LT_ELSE ; 
 scalar_t__ LT_ELTRUE ; 
 scalar_t__ LT_ENDIF ; 
 scalar_t__ LT_EOF ; 
 scalar_t__ LT_FALSE ; 
 scalar_t__ LT_FALSEI ; 
 scalar_t__ LT_IF ; 
 scalar_t__ LT_PLAIN ; 
 scalar_t__ LT_TRUE ; 
 scalar_t__ LT_TRUEI ; 
 scalar_t__ MAXLINE ; 
 int /*<<< orphan*/ * comment_name ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int FUNC5 (char const**) ; 
 scalar_t__ FUNC6 (char const**) ; 
 scalar_t__* ignore ; 
 size_t incomment ; 
 int /*<<< orphan*/  input ; 
 char* keyword ; 
 int /*<<< orphan*/  linenum ; 
 size_t linestate ; 
 int /*<<< orphan*/ * linestate_name ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/ * newline ; 
 int /*<<< orphan*/ * newline_crlf ; 
 int /*<<< orphan*/ * newline_unix ; 
 char* FUNC10 (char const*) ; 
 char* FUNC11 () ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char const*,char*,int) ; 
 scalar_t__ FUNC17 (char const*,char) ; 
 char const* tline ; 
 int /*<<< orphan*/ ** value ; 

__attribute__((used)) static Linetype
FUNC18(void)
{
	const char *cp;
	int cursym;
	Linetype retval;
	Comment_state wascomment;

	wascomment = incomment;
	cp = FUNC11();
	if (cp == NULL)
		return (LT_EOF);
	if (newline == NULL) {
		if (FUNC17(tline, '\n') == FUNC17(tline, '\r') + 1)
			newline = newline_crlf;
		else
			newline = newline_unix;
	}
	if (*cp == '\0') {
		retval = LT_PLAIN;
		goto done;
	}
	keyword = tline + (cp - tline);
	if ((cp = FUNC9("ifdef", keyword)) != NULL ||
	    (cp = FUNC9("ifndef", keyword)) != NULL) {
		cp = FUNC10(cp);
		if ((cursym = FUNC5(&cp)) < 0)
			retval = LT_IF;
		else {
			retval = (keyword[2] == 'n')
			    ? LT_FALSE : LT_TRUE;
			if (value[cursym] == NULL)
				retval = (retval == LT_TRUE)
				    ? LT_FALSE : LT_TRUE;
			if (ignore[cursym])
				retval = (retval == LT_TRUE)
				    ? LT_TRUEI : LT_FALSEI;
		}
	} else if ((cp = FUNC9("if", keyword)) != NULL)
		retval = FUNC6(&cp);
	else if ((cp = FUNC9("elif", keyword)) != NULL)
		retval = FUNC8(FUNC6(&cp));
	else if ((cp = FUNC9("else", keyword)) != NULL)
		retval = LT_ELSE;
	else if ((cp = FUNC9("endif", keyword)) != NULL)
		retval = LT_ENDIF;
	else {
		cp = FUNC13(keyword);
		/* no way can we deal with a continuation inside a keyword */
		if (FUNC16(cp, "\\\r\n", 3) == 0 ||
		    FUNC16(cp, "\\\n", 2) == 0)
			FUNC0();
		cp = FUNC12(cp);
		retval = LT_PLAIN;
		goto done;
	}
	cp = FUNC10(cp);
	if (*cp != '\0') {
		cp = FUNC12(cp);
		if (retval == LT_TRUE || retval == LT_FALSE ||
		    retval == LT_TRUEI || retval == LT_FALSEI)
			retval = LT_IF;
		if (retval == LT_ELTRUE || retval == LT_ELFALSE)
			retval = LT_ELIF;
	}
	/* the following can happen if the last line of the file lacks a
	   newline or if there is too much whitespace in a directive */
	if (linestate == LS_HASH) {
		long len = cp - tline;
		if (FUNC4(tline + len, MAXLINE - len, input) == NULL) {
			if (FUNC3(input))
				FUNC2(2, "can't read %s", filename);
			/* append the missing newline at eof */
			FUNC14(tline + len, newline);
			cp += FUNC15(newline);
			linestate = LS_START;
		} else {
			linestate = LS_DIRTY;
		}
	}
	if (retval != LT_PLAIN && (wascomment || linestate != LS_START)) {
		retval = FUNC7(retval);
		linestate = LS_DIRTY;
	}
done:
	FUNC1("parser line %d state %s comment %s line", linenum,
	    comment_name[incomment], linestate_name[linestate]);
	return (retval);
}