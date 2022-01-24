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
typedef  int uint32_t ;
struct iavf_sc {int dummy; } ;

/* Variables and functions */
#define  IAVF_FLAG_AQ_ADD_MAC_FILTER 139 
#define  IAVF_FLAG_AQ_ADD_VLAN_FILTER 138 
#define  IAVF_FLAG_AQ_CONFIGURE_PROMISC 137 
#define  IAVF_FLAG_AQ_CONFIGURE_QUEUES 136 
#define  IAVF_FLAG_AQ_CONFIG_RSS_KEY 135 
#define  IAVF_FLAG_AQ_CONFIG_RSS_LUT 134 
#define  IAVF_FLAG_AQ_DEL_MAC_FILTER 133 
#define  IAVF_FLAG_AQ_DEL_VLAN_FILTER 132 
#define  IAVF_FLAG_AQ_DISABLE_QUEUES 131 
#define  IAVF_FLAG_AQ_ENABLE_QUEUES 130 
#define  IAVF_FLAG_AQ_MAP_VECTORS 129 
#define  IAVF_FLAG_AQ_SET_RSS_HENA 128 
 int FUNC0 (struct iavf_sc*) ; 
 int FUNC1 (struct iavf_sc*) ; 
 int FUNC2 (struct iavf_sc*) ; 
 int FUNC3 (struct iavf_sc*) ; 
 int FUNC4 (struct iavf_sc*) ; 
 int FUNC5 (struct iavf_sc*) ; 
 int FUNC6 (struct iavf_sc*) ; 
 int FUNC7 (struct iavf_sc*) ; 
 int FUNC8 (struct iavf_sc*) ; 
 int FUNC9 (struct iavf_sc*) ; 
 int FUNC10 (struct iavf_sc*) ; 
 int FUNC11 (struct iavf_sc*) ; 

int
FUNC12(struct iavf_sc *sc, uint32_t request)
{

	switch (request) {
	case IAVF_FLAG_AQ_MAP_VECTORS:
		return FUNC10(sc);

	case IAVF_FLAG_AQ_ADD_MAC_FILTER:
		return FUNC0(sc);

	case IAVF_FLAG_AQ_ADD_VLAN_FILTER:
		return FUNC1(sc);

	case IAVF_FLAG_AQ_DEL_MAC_FILTER:
		return FUNC6(sc);

	case IAVF_FLAG_AQ_DEL_VLAN_FILTER:
		return FUNC7(sc);

	case IAVF_FLAG_AQ_CONFIGURE_QUEUES:
		return FUNC5(sc);

	case IAVF_FLAG_AQ_DISABLE_QUEUES:
		return FUNC8(sc);

	case IAVF_FLAG_AQ_ENABLE_QUEUES:
		return FUNC9(sc);

	case IAVF_FLAG_AQ_CONFIG_RSS_KEY:
		return FUNC3(sc);

	case IAVF_FLAG_AQ_SET_RSS_HENA:
		return FUNC11(sc);

	case IAVF_FLAG_AQ_CONFIG_RSS_LUT:
		return FUNC4(sc);

	case IAVF_FLAG_AQ_CONFIGURE_PROMISC:
		return FUNC2(sc);
	}

	return (0);
}