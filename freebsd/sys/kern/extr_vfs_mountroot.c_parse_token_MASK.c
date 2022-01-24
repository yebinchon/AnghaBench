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
 int /*<<< orphan*/  CC_NONWHITESPACE ; 
 int /*<<< orphan*/  CC_WHITESPACE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char **conf, char **tok)
{
	char *p;
	size_t len;
	int error;

	*tok = NULL;
	error = FUNC2(conf, CC_NONWHITESPACE);
	if (error)
		return (error);
	p = *conf;
	error = FUNC2(conf, CC_WHITESPACE);
	len = *conf - p;
	*tok = FUNC1(len + 1, M_TEMP, M_WAITOK | M_ZERO);
	FUNC0(p, *tok, len);
	return (0);
}