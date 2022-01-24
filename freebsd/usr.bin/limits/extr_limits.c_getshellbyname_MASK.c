#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int SH_SH ; 
 TYPE_1__* shellparm ; 
 int FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static int
FUNC3(const char * shell)
{
    int i;
    const char * q;
    const char * p = FUNC2(shell, '/');

    p = p ? p+1 : shell;
    for (i = 0; (q = shellparm[i].name) != NULL; i++) {
	while (*q) {
	    int j = FUNC0(q, "|");

	    if (j == 0)
		break;
	    if (FUNC1(p, q, j) == 0)
		return i;
	    if (*(q += j))
		++q;
	}
    }
    return SH_SH;
}