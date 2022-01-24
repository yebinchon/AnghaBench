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
struct sctp_initmsg {int sinit_num_ostreams; int sinit_max_instreams; int sinit_max_attempts; int sinit_max_init_timeo; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC1(FILE *fp, struct sctp_initmsg *init)
{
	FUNC0(fp, "{out=%u,", init->sinit_num_ostreams);
	FUNC0(fp, "in=%u,", init->sinit_max_instreams);
	FUNC0(fp, "max_rtx=%u,", init->sinit_max_attempts);
	FUNC0(fp, "max_rto=%u}", init->sinit_max_init_timeo);
}