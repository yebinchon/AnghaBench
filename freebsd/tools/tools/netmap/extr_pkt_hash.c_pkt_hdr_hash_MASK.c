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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct ether_header {int /*<<< orphan*/  ether_type; } ;

/* Variables and functions */
#define  ETHERTYPE_ARP 131 
#define  ETHERTYPE_IP 130 
#define  ETHERTYPE_IPV6 129 
#define  ETHERTYPE_VLAN 128 
 int /*<<< orphan*/  FUNC0 (struct ip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ether_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ether_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC5(const unsigned char *buffer, uint8_t hash_split, uint8_t seed)
{
	uint32_t rc = 0;
	struct ether_header *ethh = (struct ether_header *)buffer;

	switch (FUNC4(ethh->ether_type)) {
	case ETHERTYPE_IP:
		rc = FUNC0((struct ip *)(ethh + 1),
				      hash_split, seed);
		break;
	case ETHERTYPE_IPV6:
		rc = FUNC1((struct ip6_hdr *)(ethh + 1),
					hash_split, seed);
		break;
	case ETHERTYPE_VLAN:
		rc = FUNC3(ethh, hash_split, seed);
		break;
	case ETHERTYPE_ARP:
	default:
		/* others */
		rc = FUNC2(ethh, seed);
		break;
	}

	return rc;
}