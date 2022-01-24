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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct rdnss_addr {int /*<<< orphan*/  ra_dns; } ;
struct rdnss {int /*<<< orphan*/  rd_ltime; } ;
typedef  int /*<<< orphan*/  ntopbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int SSBUFLEN ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(void *msg)
{
	struct rdnss *rdn;
	struct rdnss_addr *rda;
	uint16_t *rdn_cnt;
	uint16_t *rda_cnt;
	int i;
	int j;
	char *p;
	uint32_t	ltime;
	char ntopbuf[INET6_ADDRSTRLEN];
	char ssbuf[SSBUFLEN];

	p = msg;
	rdn_cnt = (uint16_t *)p;
	p += sizeof(*rdn_cnt);

	if (*rdn_cnt > 0) {
		for (i = 0; i < *rdn_cnt; i++) {
			rdn = (struct rdnss *)p;
			ltime = rdn->rd_ltime;
			p += sizeof(*rdn);

			rda_cnt = (uint16_t *)p;
			p += sizeof(*rda_cnt);
			if (*rda_cnt > 0)
				for (j = 0; j < *rda_cnt; j++) {
					rda = (struct rdnss_addr *)p;
					FUNC1("\t  %s (ltime=%s)\n",
					    FUNC0(AF_INET6,
						&rda->ra_dns,
						ntopbuf,
						sizeof(ntopbuf)),
					    FUNC2(ltime, ssbuf));
					p += sizeof(*rda);
				}
		}
	}

	return (0);
}