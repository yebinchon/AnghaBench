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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockopt_data {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_obj_ntlv ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct named_object*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sockopt_data*,int) ; 
 struct named_object* FUNC3 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct namedobj_instance *ni, uint16_t kidx,
    struct sockopt_data *sd)
{
	struct named_object *no;
	ipfw_obj_ntlv *ntlv;

	no = FUNC3(ni, kidx);
	FUNC0(no != NULL, ("invalid object kernel index passed"));

	ntlv = (ipfw_obj_ntlv *)FUNC2(sd, sizeof(*ntlv));
	if (ntlv == NULL)
		return (ENOMEM);

	FUNC1(no, ntlv);
	return (0);
}