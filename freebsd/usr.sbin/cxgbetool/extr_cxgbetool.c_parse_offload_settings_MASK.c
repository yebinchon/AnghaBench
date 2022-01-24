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
struct offload_settings {int rx_coalesce; int cong_algo; int sched_class; int tstamp; int sack; int nagle; int ecn; int ddp; int tls; int txq; int rxq; int mss; int /*<<< orphan*/  offload; } ;

/* Variables and functions */
 int EINVAL ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char**,char const*,int*,struct offload_settings*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(const char *settings_ro, struct offload_settings *os)
{
	const char *ws = " \f\n\r\v\t";
	char *settings, *s, *next;
	int rc, nsettings, neg;
	static const struct offload_settings default_settings = {
		.offload = 0,	/* No settings imply !offload */
		.rx_coalesce = -1,
		.cong_algo = -1,
		.sched_class = -1,
		.tstamp = -1,
		.sack = -1,
		.nagle = -1,
		.ecn = -1,
		.ddp = -1,
		.tls = -1,
		.txq = -1,
		.rxq = -1,
		.mss = -1,
	};

	*os = default_settings;

	next = settings = FUNC2(settings_ro);
	if (settings == NULL) {
		FUNC4 (NULL);
		return (errno);
	}

	nsettings = 0;
	rc = 0;
	neg = 0;
	while ((s = FUNC3(&next, ws)) != NULL) {
		if (*s == '\0')
			continue;
		nsettings++;
		rc = FUNC1(s, &next, ws, &neg, os);
		if (rc != 0)
			goto done;
	}
	if (nsettings == 0) {
		FUNC5("no settings provided");
		rc = EINVAL;
		goto done;
	}
	if (neg > 0) {
		FUNC5("%d stray negation(s) at end of offload settings", neg);
		rc = EINVAL;
		goto done;
	}
done:
	FUNC0(settings);
	return (rc);
}