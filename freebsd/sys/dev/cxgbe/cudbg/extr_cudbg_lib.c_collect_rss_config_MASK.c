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
typedef  int u32 ;
struct rss_config {int /*<<< orphan*/  chip; void* tp_rssconf_cng; void* tp_rssconf_vrt; void* tp_rssconf_syn; void* tp_rssconf_ofd; void* tp_rssconf_tnl; void* tp_rssconf; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  chipid; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_RSS_CONFIG ; 
 int /*<<< orphan*/  A_TP_RSS_CONFIG_CNG ; 
 int /*<<< orphan*/  A_TP_RSS_CONFIG_OFD ; 
 int /*<<< orphan*/  A_TP_RSS_CONFIG_SYN ; 
 int /*<<< orphan*/  A_TP_RSS_CONFIG_TNL ; 
 int /*<<< orphan*/  A_TP_RSS_CONFIG_VRT ; 
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 void* FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC5(struct cudbg_init *pdbg_init,
			      struct cudbg_buffer *dbg_buff,
			      struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer scratch_buff;
	struct rss_config *rss_conf;
	int rc;
	u32 size;

	size = sizeof(struct rss_config);

	rc = FUNC1(dbg_buff, size, &scratch_buff);
	if (rc)
		goto err;

	rss_conf =  (struct rss_config *)scratch_buff.data;

	rss_conf->tp_rssconf = FUNC3(padap, A_TP_RSS_CONFIG);
	rss_conf->tp_rssconf_tnl = FUNC3(padap, A_TP_RSS_CONFIG_TNL);
	rss_conf->tp_rssconf_ofd = FUNC3(padap, A_TP_RSS_CONFIG_OFD);
	rss_conf->tp_rssconf_syn = FUNC3(padap, A_TP_RSS_CONFIG_SYN);
	rss_conf->tp_rssconf_vrt = FUNC3(padap, A_TP_RSS_CONFIG_VRT);
	rss_conf->tp_rssconf_cng = FUNC3(padap, A_TP_RSS_CONFIG_CNG);
	rss_conf->chip = padap->params.chipid;

	rc = FUNC4(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);

err1:
	FUNC2(&scratch_buff, dbg_buff);
err:
	return rc;
}