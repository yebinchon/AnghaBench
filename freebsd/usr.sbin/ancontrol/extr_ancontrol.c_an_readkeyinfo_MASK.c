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
struct an_req {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_ltv_key {int kindex; int klen; int* mac; } ;
struct an_ltv_genconfig {int an_home_product; } ;
typedef  int /*<<< orphan*/  areq ;

/* Variables and functions */
 int AN_HOME_NETWORK ; 
 int /*<<< orphan*/  AN_RID_ACTUALCFG ; 
 int /*<<< orphan*/  AN_RID_WEP_PERM ; 
 int /*<<< orphan*/  AN_RID_WEP_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct an_req*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(const char *iface)
{
	struct an_req		areq;
	struct an_ltv_genconfig	*cfg;
	struct an_ltv_key	*k;
	int i;
	int home;

	areq.an_len = sizeof(areq);
	areq.an_type = AN_RID_ACTUALCFG;
	FUNC0(iface, &areq);
	cfg = (struct an_ltv_genconfig *)&areq;
	if (cfg->an_home_product & AN_HOME_NETWORK)
		home = 1;
	else
		home = 0;

	FUNC1(&areq, sizeof(areq));
	k = (struct an_ltv_key *)&areq;

	FUNC2("WEP Key status:\n");
	areq.an_type = AN_RID_WEP_TEMP;  	/* read first key */
	for(i=0; i<5; i++) {
		areq.an_len = sizeof(struct an_ltv_key);
		FUNC0(iface, &areq);
       		if (k->kindex == 0xffff)
			break;
		switch (k->klen) {
		case 0:
			FUNC2("\tKey %u is unset\n", k->kindex);
			break;
		case 5:
			FUNC2("\tKey %u is set  40 bits\n", k->kindex);
			break;
		case 13:
			FUNC2("\tKey %u is set 128 bits\n", k->kindex);
			break;
		default:
			FUNC2("\tWEP Key %d has an unknown size %u\n",
			    i, k->klen);
		}

		areq.an_type = AN_RID_WEP_PERM;	/* read next key */
	}
	k->kindex = 0xffff;
	areq.an_len = sizeof(struct an_ltv_key);
      	FUNC0(iface, &areq);
	FUNC2("\tThe active transmit key is %d\n", 4 * home + k->mac[0]);

	return;
}