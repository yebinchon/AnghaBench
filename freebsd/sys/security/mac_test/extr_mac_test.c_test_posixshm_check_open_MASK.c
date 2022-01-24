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
struct shmfd {int dummy; } ;
struct label {int dummy; } ;
typedef  int /*<<< orphan*/  accmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  MAGIC_POSIX_SHM ; 
 int /*<<< orphan*/  posixshm_check_open ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmfdlabel, accmode_t accmode)
{

	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC1(shmfdlabel, MAGIC_POSIX_SHM);
	FUNC0(posixshm_check_open);
	return (0);
}