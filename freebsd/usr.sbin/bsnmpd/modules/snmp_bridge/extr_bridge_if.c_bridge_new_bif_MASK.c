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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int /*<<< orphan*/  octet; } ;
struct bridge_if {int hold_time; int /*<<< orphan*/  prot_spec; int /*<<< orphan*/  br_type; int /*<<< orphan*/  sysindex; TYPE_1__ br_addr; int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BaseType_transparent_only ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bridge_ifs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_if*,int) ; 
 int /*<<< orphan*/  dot1dStpProtocolSpecification_ieee8021d ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bridge_if *
FUNC7(const char *bif_n, uint32_t sysindex, const u_char *physaddr)
{
	struct bridge_if *bif;

	if ((bif = (struct bridge_if *) FUNC3(sizeof(*bif)))== NULL) {
		FUNC6(LOG_ERR, "bridge new interface failed: %s",
		    FUNC4(errno));
		return (NULL);
	}

	FUNC2(bif, sizeof(struct bridge_if));
	FUNC5(bif->bif_name, bif_n, IFNAMSIZ);
	FUNC0(physaddr, bif->br_addr.octet, ETHER_ADDR_LEN);
	bif->sysindex = sysindex;
	bif->br_type = BaseType_transparent_only;
	/* 1 - all bridges default hold time * 100 - centi-seconds */
	bif->hold_time = 1 * 100;
	bif->prot_spec = dot1dStpProtocolSpecification_ieee8021d;
	FUNC1(&bridge_ifs, bif);

	return (bif);
}