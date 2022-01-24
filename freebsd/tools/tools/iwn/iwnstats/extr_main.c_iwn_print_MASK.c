#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  general; int /*<<< orphan*/  ht; int /*<<< orphan*/  cck; int /*<<< orphan*/  ofdm; } ;
struct iwn_stats {int /*<<< orphan*/  tx; TYPE_1__ rx; } ;
struct iwnstats {struct iwn_stats st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iwnstats*,struct iwn_stats*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwnstats*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwnstats*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwnstats*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iwnstats*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(struct iwnstats *is)
{
	struct iwn_stats *s;
	struct timeval tv;

	s = &is->st;

	FUNC0(&tv, NULL);
	FUNC6("time=%ld.%.6ld\n", (long)tv.tv_sec, (long)tv.tv_usec);

	FUNC1(is, s);

	/* RX */
	FUNC3(is, &s->rx.ofdm, "ofdm");
	FUNC3(is, &s->rx.cck, "cck");
	FUNC2(is, &s->rx.ht);
	FUNC4(is, &s->rx.general);

	/* TX */
	FUNC5(is, &s->tx);
	FUNC6("--\n");
}