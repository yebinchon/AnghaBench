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
struct an_ltv_key {int kindex; int* mac; scalar_t__ klen; } ;
struct an_ltv_genconfig {int /*<<< orphan*/  an_home_product; } ;
typedef  int /*<<< orphan*/  areq ;

/* Variables and functions */
 int /*<<< orphan*/  AN_HOME_NETWORK ; 
 int /*<<< orphan*/  AN_RID_GENCONFIG ; 
 int /*<<< orphan*/  AN_RID_WEP_PERM ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct an_req*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct an_req*,int) ; 

__attribute__((used)) static void
FUNC4(const char *iface, const char *arg)
{
	struct an_req		areq;
	struct an_ltv_key	*k;
	struct an_ltv_genconfig *config;

	FUNC3(&areq, sizeof(areq));

	/* set home or not home mode */
	areq.an_len  = sizeof(struct an_ltv_genconfig);
	areq.an_type = AN_RID_GENCONFIG;
	FUNC0(iface, &areq);
	config = (struct an_ltv_genconfig *)&areq;
	if (FUNC2(arg) == 4) {
		config->an_home_product |= AN_HOME_NETWORK;
	}else{
		config->an_home_product &= ~AN_HOME_NETWORK;
	}
	FUNC1(iface, &areq);

	FUNC3(&areq, sizeof(areq));

	k = (struct an_ltv_key *)&areq;

	/* From a Cisco engineer write the transmit key to use in the
	   first MAC, index is FFFF*/
	k->kindex=0xffff;
	k->klen=0;

	k->mac[0]=FUNC2(arg);
	k->mac[1]=0;
	k->mac[2]=0;
	k->mac[3]=0;
	k->mac[4]=0;
	k->mac[5]=0;

	areq.an_len = sizeof(struct an_ltv_key);
	areq.an_type = AN_RID_WEP_PERM;
	FUNC1(iface, &areq);
}