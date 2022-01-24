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
struct ucred {struct label* cr_label; } ;
struct semid_kernel {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  MAGIC_SYSV_SEM ; 
 int /*<<< orphan*/  sysvsem_check_semctl ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred,
    struct semid_kernel *semakptr, struct label *semaklabel, int cmd)
{

	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC1(semaklabel, MAGIC_SYSV_SEM);
	FUNC0(sysvsem_check_semctl);

  	return (0);
}