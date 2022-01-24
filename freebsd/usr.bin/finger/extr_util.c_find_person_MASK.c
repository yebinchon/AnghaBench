#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct passwd {int dummy; } ;
struct TYPE_7__ {scalar_t__ (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {char* data; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  PERSON ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 TYPE_2__* db ; 
 struct passwd* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

PERSON *
FUNC5(char *name)
{
	struct passwd *pw;

	DBT data, key;
	PERSON *p;

	if (!db)
		return(NULL);

	if ((pw = FUNC0(name)) && FUNC1(pw))
		return(NULL);

	key.data = name;
	key.size = FUNC3(name);

	if ((*db->get)(db, &key, &data, 0))
		return (NULL);
	FUNC2(&p, data.data, sizeof p);
	return (p);
}