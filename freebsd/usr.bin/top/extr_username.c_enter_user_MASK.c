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
struct TYPE_2__ {int uid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ MAXLOGNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*,int) ; 
 TYPE_1__* hash_table ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

int
FUNC4(int uid, char name[], bool wecare)
{
    int hashindex;

#ifdef DEBUG
    fprintf(stderr, "enter_hash(%d, %s, %d)\n", uid, name, wecare);
#endif

    hashindex = FUNC1(uid);

    if (!FUNC2(hashindex))
    {
	if (!wecare)
	    return (0);		/* Don't clobber a slot for trash */
	if (hash_table[hashindex].uid == uid)
	    return(hashindex);	/* Fortuitous find */
    }

    /* empty or wrong slot -- fill it with new value */
    hash_table[hashindex].uid = uid;
    (void) FUNC3(hash_table[hashindex].name, name, MAXLOGNAME - 1);
    return(hashindex);
}