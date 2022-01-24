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
 int G_LLVM_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static size_t 
FUNC4(char *name, const char *tok)
{
	size_t len;

	len = 0;
	if (tok == NULL)
		return (0);
	if (tok[0] == '-')
		return (0);
	if (FUNC3(tok, ".") == 0 || FUNC3(tok, "..") == 0)
		return (0);
	while (tok[len] && (FUNC1(tok[len]) || FUNC2(tok[len]) ||
	    tok[len] == '.' || tok[len] == '_' || tok[len] == '-' ||
	    tok[len] == '+') && len < G_LLVM_NAMELEN - 1)
		len++;
	FUNC0(tok, name, len);
	name[len] = '\0';
	return (len);
}