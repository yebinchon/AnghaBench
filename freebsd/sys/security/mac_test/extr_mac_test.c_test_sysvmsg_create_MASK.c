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
struct msqid_kernel {int dummy; } ;
struct msg {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_SYSV_MSG ; 
 int /*<<< orphan*/  MAGIC_SYSV_MSQ ; 
 int /*<<< orphan*/  sysvmsg_create ; 

__attribute__((used)) static void
FUNC2(struct ucred *cred, struct msqid_kernel *msqkptr,
    struct label *msqlabel, struct msg *msgptr, struct label *msglabel)
{

	FUNC1(msglabel, MAGIC_SYSV_MSG);
	FUNC1(msqlabel, MAGIC_SYSV_MSQ);
	FUNC0(sysvmsg_create);
}