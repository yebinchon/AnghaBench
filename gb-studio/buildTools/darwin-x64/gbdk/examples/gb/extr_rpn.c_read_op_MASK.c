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
typedef  char BYTE ;

/* Variables and functions */
 char NUMBER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int n ; 
 size_t pos ; 
 char* s ; 

BYTE FUNC2(void)
{
    if(pos == 0) {
	FUNC0(s);
    }

    while(s[pos] == ' ' || s[pos] == '\t')
	pos++;

    if(s[pos] == '\0') {
	pos = 0;
	return('\n');
    }

    if(!FUNC1(s[pos]))
	return(s[pos++]);

    n = s[pos] - '0';
    while(FUNC1(s[++pos]))
	n = 10 * n + s[pos] - '0';

    return NUMBER;
}