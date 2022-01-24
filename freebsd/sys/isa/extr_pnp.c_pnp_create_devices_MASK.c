#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint32_t ;
typedef  int u_char ;
struct pnp_set_config_arg {int csn; int ldn; } ;
struct TYPE_3__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  vendor_id; } ;
typedef  TYPE_1__ pnp_id ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FALSE ; 
 int ISACFGATTR_CANDISABLE ; 
 int ISACFGATTR_DYNAMIC ; 
 int /*<<< orphan*/  ISA_ORDER_PNP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct pnp_set_config_arg*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
#define  PNP_TAG_END 129 
 scalar_t__ PNP_TAG_ID_ANSI ; 
#define  PNP_TAG_LOGICAL_DEVICE 128 
 int /*<<< orphan*/  FUNC6 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct pnp_set_config_arg* FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char,int,int /*<<< orphan*/ *) ; 
 char* FUNC17 (char) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int*,int,int) ; 
 int /*<<< orphan*/  pnp_set_config ; 

__attribute__((used)) static int
FUNC19(device_t parent, pnp_id *p, int csn,
    u_char *resources, int len)
{
	u_char tag, *resp, *resinfo, *startres = NULL;
	int large_len, scanning = len, retval = FALSE;
	uint32_t logical_id;
	device_t dev = 0;
	int ldn = 0;
	struct pnp_set_config_arg *csnldn;
	char buf[100];
	char *desc = NULL;

	resp = resources;
	while (scanning > 0) {
		tag = *resp++;
		scanning--;
		if (FUNC3(tag) != 0) {
			/* Large resource */
			if (scanning < 2) {
				scanning = 0;
				continue;
			}
			large_len = resp[0] + (resp[1] << 8);
			resp += 2;

			if (scanning < large_len) {
				scanning = 0;
				continue;
			}
			resinfo = resp;
			resp += large_len;
			scanning -= large_len;

			if (FUNC2(tag) == PNP_TAG_ID_ANSI) {
				if (dev) {
					/*
					 * This is an optional device
					 * identifier string. Skip it
					 * for now.
					 */
					continue;
				}
				/* else mandately card identifier string */
				if (large_len > sizeof(buf) - 1)
					large_len = sizeof(buf) - 1;
				FUNC6(resinfo, buf, large_len);

				/*
				 * Trim trailing spaces.
				 */
				while (buf[large_len-1] == ' ')
					large_len--;
				buf[large_len] = '\0';
				desc = buf;
				continue;
			}

			continue;
		}
		
		/* Small resource */
		if (scanning < FUNC4(tag)) {
			scanning = 0;
			continue;
		}
		resinfo = resp;
		resp += FUNC4(tag);
		scanning -= FUNC4(tag);
			
		switch (FUNC5(tag)) {
		case PNP_TAG_LOGICAL_DEVICE:
			/*
			 * Parse the resources for the previous
			 * logical device (if any).
			 */
			if (startres) {
				FUNC18(dev, startres,
				    resinfo - startres - 1, ldn);
				dev = 0;
				startres = NULL;
			}

			/* 
			 * A new logical device. Scan for end of
			 * resources.
			 */
			FUNC6(resinfo, &logical_id, 4);
			FUNC16(p->vendor_id, logical_id, ldn, NULL);
			dev = FUNC0(parent, ISA_ORDER_PNP, NULL, -1);
			if (desc)
				FUNC8(dev, desc);
			else
				FUNC8(dev,
				    FUNC17(logical_id));
			FUNC14(dev, p->vendor_id);
			FUNC13(dev, p->serial);
			FUNC10(dev, logical_id);
			FUNC9(dev,
			    ISACFGATTR_CANDISABLE | ISACFGATTR_DYNAMIC);
			csnldn = FUNC15(sizeof *csnldn, M_DEVBUF, M_NOWAIT);
			if (!csnldn) {
				FUNC7(parent, "out of memory\n");
				scanning = 0;
				break;
			}
			csnldn->csn = csn;
			csnldn->ldn = ldn;
			FUNC1(parent, dev, pnp_set_config,
			    csnldn);
			FUNC11(dev, csn);
			FUNC12(dev, ldn);
			ldn++;
			startres = resp;
			break;
		    
		case PNP_TAG_END:
			if (!startres) {
				FUNC7(parent, "malformed resources\n");
				scanning = 0;
				break;
			}
			FUNC18(dev, startres,
			    resinfo - startres - 1, ldn);
			dev = 0;
			startres = NULL;
			scanning = 0;
			break;

		default:
			/* Skip this resource */
			break;
		}
	}

	return (retval);
}