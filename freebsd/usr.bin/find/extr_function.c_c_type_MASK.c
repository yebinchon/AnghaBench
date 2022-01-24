#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  m_data; } ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_NOSTAT ; 
 int /*<<< orphan*/  FTS_WHITEOUT ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFIFO ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  S_IFSOCK ; 
 int /*<<< orphan*/  S_IFWHT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ftsoptions ; 
 char* FUNC1 (TYPE_2__*,char***) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 

PLAN *
FUNC3(OPTION *option, char ***argvp)
{
	char *typestring;
	PLAN *new;
	mode_t  mask;

	typestring = FUNC1(option, argvp);
	if (typestring[0] != 'd')
		ftsoptions &= ~FTS_NOSTAT;

	switch (typestring[0]) {
	case 'b':
		mask = S_IFBLK;
		break;
	case 'c':
		mask = S_IFCHR;
		break;
	case 'd':
		mask = S_IFDIR;
		break;
	case 'f':
		mask = S_IFREG;
		break;
	case 'l':
		mask = S_IFLNK;
		break;
	case 'p':
		mask = S_IFIFO;
		break;
	case 's':
		mask = S_IFSOCK;
		break;
#if defined(FTS_WHITEOUT) && defined(S_IFWHT)
	case 'w':
		mask = S_IFWHT;
		ftsoptions |= FTS_WHITEOUT;
		break;
#endif /* FTS_WHITEOUT */
	default:
		FUNC0(1, "%s: %s: unknown type", option->name, typestring);
	}

	new = FUNC2(option);
	new->m_data = mask;
	return new;
}