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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  scalar_t__ u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char AUT_ARG32 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*) ; 

token_t *
FUNC6(char n, const char *text, u_int32_t v)
{
	token_t *t;
	u_char *dptr = NULL;
	u_int16_t textlen;

	textlen = FUNC5(text);
	textlen += 1;

	FUNC4(t, dptr, 2 * sizeof(u_char) + sizeof(u_int32_t) +
	    sizeof(u_int16_t) + textlen);

	FUNC1(dptr, AUT_ARG32);
	FUNC1(dptr, n);
	FUNC3(dptr, v);
	FUNC2(dptr, textlen);
	FUNC0(dptr, text, textlen);

	return (t);
}