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
struct hent {char* h_name; double h_feetpages; struct hent* h_link; scalar_t__ h_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (char const*) ; 
 struct hent** hashtab ; 
 int /*<<< orphan*/  hcount ; 
 struct hent* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static struct hent *
FUNC5(const char name[])
{
	register struct hent *hp;
	register int h;

	if ((hp = FUNC2(name)) != NULL)
		return(hp);
	h = FUNC1(name);
	hcount++;
	hp = (struct hent *) FUNC0(sizeof *hp, (size_t)1);
	hp->h_name = (char *) FUNC0(sizeof(char), FUNC4(name)+1);
	FUNC3(hp->h_name, name);
	hp->h_feetpages = 0.0;
	hp->h_count = 0;
	hp->h_link = hashtab[h];
	hashtab[h] = hp;
	return(hp);
}