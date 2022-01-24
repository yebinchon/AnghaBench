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
struct blame_origin {int /*<<< orphan*/  path; TYPE_2__* commit; struct blame_origin* previous; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC3(struct blame_origin *suspect)
{
	if (suspect->previous) {
		struct blame_origin *prev = suspect->previous;
		FUNC1("previous %s ", FUNC0(&prev->commit->object.oid));
		FUNC2(prev->path, stdout, '\n');
	}
	FUNC1("filename ");
	FUNC2(suspect->path, stdout, '\n');
}