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
struct offload_settings {int offload; int rx_coalesce; int tstamp; int sack; int nagle; int ecn; int ddp; int tls; int cong_algo; long sched_class; long txq; long rxq; long mss; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int EINVAL ; 
 char* FUNC0 (char*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC4(const char *s, char **pnext, const char *ws,
    int *pneg, struct offload_settings *os)
{

	while (*s == '!') {
		(*pneg)++;
		s++;
	}

	if (!FUNC1(s, "not")) {
		(*pneg)++;
		return (0);
	}

	if (!FUNC1(s, "offload")) {
		os->offload = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s , "coalesce")) {
		os->rx_coalesce = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s, "timestamp") || !FUNC1(s, "tstamp")) {
		os->tstamp = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s, "sack")) {
		os->sack = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s, "nagle")) {
		os->nagle = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s, "ecn")) {
		os->ecn = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s, "ddp")) {
		os->ddp = (*pneg + 1) & 1;
		*pneg = 0;
	} else if (!FUNC1(s, "tls")) {
		os->tls = (*pneg + 1) & 1;
		*pneg = 0;
	} else {
		char *param, *p;
		long val;

		/* Settings with additional parameter handled here. */

		if (*pneg) {
			FUNC3("\"%s\" is not a valid keyword, or it does not "
			    "support negation.", s);
			return (EINVAL);
		}

		while ((param = FUNC2(pnext, ws)) != NULL) {
			if (*param != '\0')
				break;
		}
		if (param == NULL) {
			FUNC3("\"%s\" is not a valid keyword, or it requires a "
			    "parameter that has not been provided.", s);
			return (EINVAL);
		}

		if (!FUNC1(s, "cong")) {
			if (!FUNC1(param, "reno"))
				os->cong_algo = 0;
			else if (!FUNC1(param, "tahoe"))
				os->cong_algo = 1;
			else if (!FUNC1(param, "newreno"))
				os->cong_algo = 2;
			else if (!FUNC1(param, "highspeed"))
				os->cong_algo = 3;
			else {
				FUNC3("unknown congestion algorithm \"%s\".", s);
				return (EINVAL);
			}
		} else if (!FUNC1(s, "class")) {
			val = -1;
			p = FUNC0(param, &val, NULL);
			/* (nsched_cls - 1) is spelled 15 here. */
			if (*p || val < 0 || val > 15) {
				FUNC3("invalid scheduling class \"%s\".  "
				    "\"class\" needs an integer value where "
				    "0 <= value <= 15", param);
				return (EINVAL);
			}
			os->sched_class = val;
		} else if (!FUNC1(s, "bind") || !FUNC1(s, "txq") ||
		    !FUNC1(s, "rxq")) {
			val = -1;
			if (FUNC1(param, "random")) {
				p = FUNC0(param, &val, NULL);
				if (*p || val < 0 || val > 0xffff) {
					FUNC3("invalid queue specification "
					    "\"%s\".  \"%s\" needs an integer"
					    " value, or \"random\".",
					    param, s);
					return (EINVAL);
				}
			}
			if (!FUNC1(s, "bind")) {
				os->txq = val;
				os->rxq = val;
			} else if (!FUNC1(s, "txq")) {
				os->txq = val;
			} else if (!FUNC1(s, "rxq")) {
				os->rxq = val;
			} else {
				return (EDOOFUS);
			}
		} else if (!FUNC1(s, "mss")) {
			val = -1;
			p = FUNC0(param, &val, NULL);
			if (*p || val <= 0) {
				FUNC3("invalid MSS specification \"%s\".  "
				    "\"mss\" needs a positive integer value",
				    param);
				return (EINVAL);
			}
			os->mss = val;
		} else  {
			FUNC3("unknown settings keyword: \"%s\"", s);
			return (EINVAL);
		}
	}

	return (0);
}