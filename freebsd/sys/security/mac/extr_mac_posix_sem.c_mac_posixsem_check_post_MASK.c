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
struct ucred {int dummy; } ;
struct ksem {int /*<<< orphan*/  ks_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct ucred*,struct ksem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct ucred*,struct ksem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  posixsem_check_post ; 

int
FUNC2(struct ucred *active_cred, struct ucred *file_cred,
    struct ksem *ks)
{
	int error;

	FUNC1(posixsem_check_post, active_cred, file_cred,
	    ks, ks->ks_label);
	FUNC0(posixsem_check_post, error, active_cred, file_cred,
	    ks);

	return (error);
}