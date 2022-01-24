#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* secretkeyxor; void* secretkeyidx_pkd; void* defaultq_to_udpen; } ;
struct TYPE_4__ {TYPE_1__ basicvirtual; } ;
struct fw_rss_vi_config_cmd {TYPE_2__ u; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 unsigned int FUNC0 (struct fw_rss_vi_config_cmd) ; 
 int /*<<< orphan*/  FW_RSS_VI_CONFIG_CMD ; 
 unsigned int F_FW_CMD_REQUEST ; 
 unsigned int F_FW_CMD_WRITE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 void* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_rss_vi_config_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,int,struct fw_rss_vi_config_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC8(struct adapter *adapter, int mbox, unsigned int viid,
		     unsigned int flags, unsigned int defq, unsigned int skeyidx,
		     unsigned int skey)
{
	struct fw_rss_vi_config_cmd c;

	FUNC6(&c, 0, sizeof(c));
	c.op_to_viid = FUNC5(FUNC1(FW_RSS_VI_CONFIG_CMD) |
				   F_FW_CMD_REQUEST | F_FW_CMD_WRITE |
				   FUNC4(viid));
	c.retval_len16 = FUNC5(FUNC0(c));
	c.u.basicvirtual.defaultq_to_udpen = FUNC5(flags |
					FUNC2(defq));
	c.u.basicvirtual.secretkeyidx_pkd = FUNC5(
					FUNC3(skeyidx));
	c.u.basicvirtual.secretkeyxor = FUNC5(skey);

	return FUNC7(adapter, mbox, &c, sizeof(c), NULL);
}