#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int low; int mid; int hi; } ;
struct TYPE_4__ {TYPE_1__ x; } ;
struct uuid_private {int /*<<< orphan*/ * node; int /*<<< orphan*/  seq; TYPE_2__ time; } ;
struct uuid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,int,int,int,int,int,int,int) ; 

int
FUNC2(char *buf, size_t sz, struct uuid *uuid)
{
	struct uuid_private *id;
	int cnt;

	id = (struct uuid_private *)uuid;
	cnt = FUNC1(buf, sz, "%08x-%04x-%04x-%04x-%04x%04x%04x",
	    id->time.x.low, id->time.x.mid, id->time.x.hi, FUNC0(id->seq),
	    FUNC0(id->node[0]), FUNC0(id->node[1]), FUNC0(id->node[2]));
	return (cnt);
}