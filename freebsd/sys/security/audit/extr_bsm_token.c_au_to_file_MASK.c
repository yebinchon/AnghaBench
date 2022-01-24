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
typedef  int u_int32_t ;
typedef  scalar_t__ u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct timeval {int tv_usec; int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  AUT_OTHER_FILE32 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*) ; 

token_t *
FUNC6(const char *file, struct timeval tm)
{
	token_t *t;
	u_char *dptr = NULL;
	u_int16_t filelen;
	u_int32_t timems;

	filelen = FUNC5(file);
	filelen += 1;

	FUNC4(t, dptr, sizeof(u_char) + 2 * sizeof(u_int32_t) +
	    sizeof(u_int16_t) + filelen);

	timems = tm.tv_usec/1000;

	FUNC1(dptr, AUT_OTHER_FILE32);
	FUNC3(dptr, tm.tv_sec);
	FUNC3(dptr, timems);	/* We need time in ms. */
	FUNC2(dptr, filelen);
	FUNC0(dptr, file, filelen);

	return (t);
}