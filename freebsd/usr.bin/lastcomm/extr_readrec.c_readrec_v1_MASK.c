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
struct acctv3 {int ac_version; int ac_len; int ac_len2; int ac_utime; int ac_stime; int ac_etime; int ac_io; int ac_flagx; int /*<<< orphan*/  ac_tty; int /*<<< orphan*/  ac_mem; int /*<<< orphan*/  ac_gid; int /*<<< orphan*/  ac_uid; int /*<<< orphan*/  ac_btime; int /*<<< orphan*/  ac_comm; scalar_t__ ac_zero; } ;
struct acctv1 {int ac_flag; int /*<<< orphan*/  ac_tty; int /*<<< orphan*/  ac_io; int /*<<< orphan*/  ac_mem; int /*<<< orphan*/  ac_gid; int /*<<< orphan*/  ac_uid; int /*<<< orphan*/  ac_btime; int /*<<< orphan*/  ac_etime; int /*<<< orphan*/  ac_stime; int /*<<< orphan*/  ac_utime; int /*<<< orphan*/  ac_comm; } ;
typedef  int /*<<< orphan*/  av1 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AC_COMM_LEN ; 
 int ANVER ; 
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acctv1*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(FILE *f, struct acctv3 *av3)
{
	struct acctv1 av1;
	int rv;

	if ((rv = FUNC1(&av1, sizeof(av1), f)) == EOF)
		return (EOF);
	av3->ac_zero = 0;
	av3->ac_version = 3;
	av3->ac_len = av3->ac_len2 = sizeof(*av3);
	FUNC2(av3->ac_comm, av1.ac_comm, AC_COMM_LEN);
	av3->ac_utime = FUNC0(av1.ac_utime) * 1000000;
	av3->ac_stime = FUNC0(av1.ac_stime) * 1000000;
	av3->ac_etime = FUNC0(av1.ac_etime) * 1000000;
	av3->ac_btime = av1.ac_btime;
	av3->ac_uid = av1.ac_uid;
	av3->ac_gid = av1.ac_gid;
	av3->ac_mem = av1.ac_mem;
	av3->ac_io = FUNC0(av1.ac_io);
	av3->ac_tty = av1.ac_tty;
	av3->ac_flagx = av1.ac_flag | ANVER;
	return (0);
}