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
struct TYPE_2__ {int uid; int gid; int gidlen; int /*<<< orphan*/ * gidlist; } ;
struct svc_rpc_gss_client {int /*<<< orphan*/  cl_mech; int /*<<< orphan*/ * cl_gid_storage; TYPE_1__ cl_ucred; } ;
typedef  TYPE_1__ rpc_gss_ucred_t ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NGROUPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int*,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct svc_rpc_gss_client *client,
    const gss_name_t name)
{
	OM_uint32		maj_stat, min_stat;
	rpc_gss_ucred_t		*uc = &client->cl_ucred;
	int			numgroups;

	uc->uid = 65534;
	uc->gid = 65534;
	uc->gidlist = client->cl_gid_storage;

	numgroups = NGROUPS;
	maj_stat = FUNC1(&min_stat, name, client->cl_mech,
	    &uc->uid, &uc->gid, &numgroups, &uc->gidlist[0]);
	if (FUNC0(maj_stat))
		uc->gidlen = 0;
	else
		uc->gidlen = numgroups;
}