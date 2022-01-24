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
struct stringlist {char* string; struct stringlist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 

void
FUNC2(struct stringlist *listp, char *funcname)
{
    struct stringlist	*slp;

    slp = (struct stringlist *) FUNC1( sizeof(struct stringlist));
    if ( slp == (struct stringlist *) 0 )
	FUNC0( 1 , "no room for printlist");
    slp -> next = listp -> next;
    slp -> string = funcname;
    listp -> next = slp;
}