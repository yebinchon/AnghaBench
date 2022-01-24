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
typedef  size_t uint32_t ;
struct TYPE_4__ {TYPE_1__* mb; } ;
struct TYPE_3__ {int /*<<< orphan*/  tplname; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t ntpl ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__** tpllist ; 

int
FUNC4(uint32_t tpl_id, char *buf, size_t len)
{
	int error;

	error = 0;

	FUNC0();
	if (tpl_id < ntpl) {
		if (buf != NULL && len > FUNC3(tpllist[tpl_id]->mb->tplname))
			FUNC2(buf, tpllist[tpl_id]->mb->tplname, len);
		else
			error = EOVERFLOW;
	} else
		error = ENOENT;
	FUNC1();

	return (error);
}