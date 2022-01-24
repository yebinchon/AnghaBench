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
struct vlanhdr {int /*<<< orphan*/  proto; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct ether_header {int dummy; } ;

/* Variables and functions */
#define  ETHERTYPE_ARP 130 
#define  ETHERTYPE_IP 129 
#define  ETHERTYPE_IPV6 128 
 int /*<<< orphan*/  FUNC0 (struct ip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ether_header*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t
FUNC4(struct ether_header *ethh, uint8_t hash_split, uint8_t seed)
{
	uint32_t rc = 0;
	struct vlanhdr *vhdr = (struct vlanhdr *)(ethh + 1);

	switch (FUNC3(vhdr->proto)) {
	case ETHERTYPE_IP:
		rc = FUNC0((struct ip *)(vhdr + 1),
				      hash_split, seed);
		break;
	case ETHERTYPE_IPV6:
		rc = FUNC1((struct ip6_hdr *)(vhdr + 1),
					hash_split, seed);
		break;
	case ETHERTYPE_ARP:
	default:
		/* others */
		rc = FUNC2(ethh, seed);
		break;
	}
	return rc;
}