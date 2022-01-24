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
struct ucl_parser {int dummy; } ;
struct conf {int dummy; } ;

/* Variables and functions */
 struct conf* conf ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct conf *newconf, const char *path)
{
	struct ucl_parser *parser;
	int error; 

	conf = newconf;
	parser = FUNC4(0);

	if (!FUNC1(parser, path)) {
		FUNC0("unable to parse configuration file %s: %s", path,
		    FUNC2(parser));
		return (1);
	}

	error = FUNC5(FUNC3(parser));

	return (error);
}