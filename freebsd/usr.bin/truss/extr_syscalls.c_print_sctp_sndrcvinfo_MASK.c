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
struct sctp_sndrcvinfo {int sinfo_stream; int sinfo_ssn; int sinfo_context; int sinfo_timetolive; int sinfo_tsn; int sinfo_cumtsn; int sinfo_assoc_id; int /*<<< orphan*/  sinfo_ppid; int /*<<< orphan*/  sinfo_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, bool receive, struct sctp_sndrcvinfo *info)
{
	FUNC0(fp, "{sid=%u,", info->sinfo_stream);
	if (receive) {
		FUNC0(fp, "ssn=%u,", info->sinfo_ssn);
	}
	FUNC1("flgs=", fp);
	FUNC3(fp, info->sinfo_flags);
	FUNC0(fp, ",ppid=%u,", FUNC2(info->sinfo_ppid));
	if (!receive) {
		FUNC0(fp, "ctx=%u,", info->sinfo_context);
		FUNC0(fp, "ttl=%u,", info->sinfo_timetolive);
	}
	if (receive) {
		FUNC0(fp, "tsn=%u,", info->sinfo_tsn);
		FUNC0(fp, "cumtsn=%u,", info->sinfo_cumtsn);
	}
	FUNC0(fp, "id=%u}", info->sinfo_assoc_id);
}