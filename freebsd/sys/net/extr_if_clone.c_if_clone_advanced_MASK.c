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
struct if_clone {int /*<<< orphan*/  ifc_destroy; int /*<<< orphan*/  ifc_create; int /*<<< orphan*/  ifc_match; int /*<<< orphan*/  ifc_type; } ;
typedef  int /*<<< orphan*/  ifc_match_t ;
typedef  int /*<<< orphan*/  ifc_destroy_t ;
typedef  int /*<<< orphan*/  ifc_create_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADVANCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct if_clone*) ; 
 struct if_clone* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct if_clone*) ; 
 int /*<<< orphan*/  if_clone_event ; 

struct if_clone *
FUNC3(const char *name, u_int maxunit, ifc_match_t match,
	ifc_create_t create, ifc_destroy_t destroy)
{
	struct if_clone *ifc;

	ifc = FUNC1(name, maxunit);
	ifc->ifc_type = ADVANCED;
	ifc->ifc_match = match;
	ifc->ifc_create = create;
	ifc->ifc_destroy = destroy;

	if (FUNC2(ifc) != 0)
		return (NULL);

	FUNC0(if_clone_event, ifc);

	return (ifc);
}