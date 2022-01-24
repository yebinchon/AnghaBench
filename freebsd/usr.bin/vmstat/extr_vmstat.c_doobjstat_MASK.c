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
struct kinfo_vmobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kinfo_vmobject*) ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_vmobject*) ; 
 struct kinfo_vmobject* FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct kinfo_vmobject *kvo;
	int cnt, i;

	kvo = FUNC2(&cnt);
	if (kvo == NULL) {
		FUNC6("Failed to fetch VM object list");
		return;
	}
	FUNC4("{T:RES/%5s} {T:ACT/%5s} {T:INACT/%5s} {T:REF/%3s} {T:SHD/%3s} "
	    "{T:CM/%3s} {T:TP/%2s} {T:PATH/%s}\n");
	FUNC5("object");
	for (i = 0; i < cnt; i++)
		FUNC0(&kvo[i]);
	FUNC1(kvo);
	FUNC3("object");
}