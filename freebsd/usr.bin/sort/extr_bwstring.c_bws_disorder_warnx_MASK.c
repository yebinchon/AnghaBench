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
struct TYPE_2__ {int /*<<< orphan*/  wstr; int /*<<< orphan*/  cstr; } ;
struct bwstring {TYPE_1__ data; } ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bwstring *s, const char *fn, size_t pos)
{

	if (MB_CUR_MAX == 1)
		FUNC0("%s:%zu: disorder: %s", fn, pos + 1, s->data.cstr);
	else
		FUNC0("%s:%zu: disorder: %ls", fn, pos + 1, s->data.wstr);
}