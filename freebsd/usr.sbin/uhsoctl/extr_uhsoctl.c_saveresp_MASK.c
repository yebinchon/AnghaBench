#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* val; } ;
typedef  TYPE_2__ resp_arg ;
struct TYPE_4__ {int int32; char** ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 char** FUNC1 (char**,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(resp_arg *ra, const char *cmd, const char *resp)
{
	char **buf;
	int i = ra->val[1].int32;

#ifdef DEBUG
	fprintf(stderr, "Save '%s'\n", resp);
#endif

	buf = FUNC1(ra->val[0].ptr, sizeof(char *) * (i + 1));
	if (buf == NULL)
		return;

	buf[i] = FUNC2(resp);

	ra->val[0].ptr = buf;
	ra->val[1].int32 = i + 1;
}