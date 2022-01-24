#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; int /*<<< orphan*/  tag; } ;
struct TYPE_5__ {int count; TYPE_2__* attr; } ;
typedef  int /*<<< orphan*/  SecKeychainItemRef ;
typedef  TYPE_1__ SecKeychainAttributeList ;
typedef  TYPE_2__ SecKeychainAttribute ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kSecAccountItemAttr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SecKeychainItemRef item)
{
	SecKeychainAttributeList list;
	SecKeychainAttribute attr;

	list.count = 1;
	list.attr = &attr;
	attr.tag = kSecAccountItemAttr;

	if (FUNC0(item, NULL, &list, NULL, NULL))
		return;

	FUNC2("username", attr.data, attr.length);
	FUNC1(&list, NULL);
}