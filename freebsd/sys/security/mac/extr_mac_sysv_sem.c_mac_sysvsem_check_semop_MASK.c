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
struct semid_kernel {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct semid_kernel*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct semid_kernel*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  sysvsem_check_semop ; 

int
FUNC2(struct ucred *cred, struct semid_kernel *semakptr,
    size_t accesstype)
{
	int error;

	FUNC1(sysvsem_check_semop, cred, semakptr,
	    semakptr->label, accesstype);
	FUNC0(sysvsem_check_semop, error, cred, semakptr,
	    accesstype);

	return (error);
}