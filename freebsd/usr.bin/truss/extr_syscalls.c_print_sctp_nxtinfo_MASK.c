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
struct sctp_nxtinfo {int nxt_sid; int nxt_length; int nxt_assoc_id; int /*<<< orphan*/  nxt_ppid; int /*<<< orphan*/  nxt_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysdecode_sctp_nxt_flags ; 

__attribute__((used)) static void
FUNC4(FILE *fp, struct sctp_nxtinfo *info)
{
	FUNC0(fp, "{sid=%u,", info->nxt_sid);
	FUNC1("flgs=", fp);
	FUNC3(sysdecode_sctp_nxt_flags, fp, info->nxt_flags);
	FUNC0(fp, ",ppid=%u,", FUNC2(info->nxt_ppid));
	FUNC0(fp, "len=%u,", info->nxt_length);
	FUNC0(fp, "id=%u}", info->nxt_assoc_id);
}