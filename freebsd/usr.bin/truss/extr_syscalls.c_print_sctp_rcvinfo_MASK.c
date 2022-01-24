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
struct sctp_rcvinfo {int rcv_sid; int rcv_ssn; int rcv_tsn; int rcv_cumtsn; int rcv_context; int rcv_assoc_id; int /*<<< orphan*/  rcv_ppid; int /*<<< orphan*/  rcv_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysdecode_sctp_rcv_flags ; 

__attribute__((used)) static void
FUNC4(FILE *fp, struct sctp_rcvinfo *info)
{
	FUNC0(fp, "{sid=%u,", info->rcv_sid);
	FUNC0(fp, "ssn=%u,", info->rcv_ssn);
	FUNC1("flgs=", fp);
	FUNC3(sysdecode_sctp_rcv_flags, fp, info->rcv_flags);
	FUNC0(fp, ",ppid=%u,", FUNC2(info->rcv_ppid));
	FUNC0(fp, "tsn=%u,", info->rcv_tsn);
	FUNC0(fp, "cumtsn=%u,", info->rcv_cumtsn);
	FUNC0(fp, "ctx=%u,", info->rcv_context);
	FUNC0(fp, "id=%u}", info->rcv_assoc_id);
}