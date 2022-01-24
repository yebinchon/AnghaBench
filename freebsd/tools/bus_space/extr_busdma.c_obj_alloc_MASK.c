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
typedef  int /*<<< orphan*/  u_int ;
struct obj {int oid; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 struct obj* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct obj*) ; 
 int noids ; 
 struct obj** oidtbl ; 
 struct obj** FUNC2 (struct obj**,int) ; 

__attribute__((used)) static struct obj *
FUNC3(u_int type)
{
	struct obj **newtbl, *obj;
	int oid;

	obj = FUNC0(1, sizeof(struct obj));
	obj->type = type;

	for (oid = 0; oid < noids; oid++) {
		if (oidtbl[oid] == 0)
			break;
	}
	if (oid == noids) {
		newtbl = FUNC2(oidtbl, sizeof(struct obj *) * (noids + 1));
		if (newtbl == NULL) {
			FUNC1(obj);
			return (NULL);
		}
		oidtbl = newtbl;
		noids++;
	}
	oidtbl[oid] = obj;
	obj->oid = oid;
	return (obj);
}