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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_RX_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC6(uint64_t nae_base)
{
	uint32_t val;

	val = FUNC0(nae_base, NAE_RX_CONFIG);
	val |= (1 << 12); /* hardware parser enable */
	FUNC5(nae_base, NAE_RX_CONFIG, val);

	/***********************************************
	 * program L3 CAM table
	 ***********************************************/

	/*
	 *  entry-0 is ipv4 MPLS type 1 label
	 */
	 /* l3hdroff = 4 bytes, ether_type = 0x8847 for MPLS_type1 */
	FUNC1(nae_base, 0, 4, 1, 9, 1, 0x8847);
	/* l3off0 (8 bytes) -> l3len0 (1 byte) := ip proto
	 * l3off1 (12 bytes) -> l3len1 (4 bytes) := src ip
	 * l3off2 (16 bytes) -> l3len2 (4 bytes) := dst ip
	 */
	FUNC2(nae_base, 0, 9, 1, 12, 4, 16, 4);

	/*
	 * entry-1 is for ethernet IPv4 packets
	 */
	FUNC1(nae_base, 1, 0, 1, 9, 1, 0x0800);
	/* l3off0 (8 bytes) -> l3len0 (1 byte) := ip proto
	 * l3off1 (12 bytes) -> l3len1 (4 bytes) := src ip
	 * l3off2 (16 bytes) -> l3len2 (4 bytes) := dst ip
	 */
	FUNC2(nae_base, 1, 9, 1, 12, 4, 16, 4);

	/*
	 * entry-2 is for ethernet IPv6 packets
	 */
	FUNC1(nae_base, 2, 0, 1, 6, 1, 0x86dd);
	/* l3off0 (6 bytes) -> l3len0 (1 byte) := next header (ip proto)
	 * l3off1 (8 bytes) -> l3len1 (16 bytes) := src ip
	 * l3off2 (24 bytes) -> l3len2 (16 bytes) := dst ip
	 */
	FUNC2(nae_base, 2, 6, 1, 8, 16, 24, 16);

	/*
	 * entry-3 is for ethernet ARP packets
	 */
	FUNC1(nae_base, 3, 0, 0, 9, 1, 0x0806);
	/* extract 30 bytes from packet start */
	FUNC2(nae_base, 3, 0, 30, 0, 0, 0, 0);

	/*
	 * entry-4 is for ethernet FCoE packets
	 */
	FUNC1(nae_base, 4, 0, 0, 9, 1, 0x8906);
	/* FCoE packet consists of 4 byte start-of-frame,
	 * and 24 bytes of frame header, followed by
	 * 64 bytes of optional-header (ESP, network..),
	 * 2048 bytes of payload, 36 bytes of optional
	 * "fill bytes" or ESP trailer, 4 bytes of CRC,
	 * and 4 bytes of end-of-frame
	 * We extract the first 4 + 24 = 28 bytes
	 */
	FUNC2(nae_base, 4, 0, 28, 0, 0, 0, 0);

	/*
	 * entry-5 is for vlan tagged frames (0x8100)
	 */
	FUNC1(nae_base, 5, 0, 0, 9, 1, 0x8100);
	/* we extract 31 bytes from the payload */
	FUNC2(nae_base, 5, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-6 is for ieee 802.1ad provider bridging
	 * tagged frames (0x88a8)
	 */
	FUNC1(nae_base, 6, 0, 0, 9, 1, 0x88a8);
	/* we extract 31 bytes from the payload */
	FUNC2(nae_base, 6, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-7 is for Cisco's Q-in-Q tagged frames (0x9100)
	 */
	FUNC1(nae_base, 7, 0, 0, 9, 1, 0x9100);
	/* we extract 31 bytes from the payload */
	FUNC2(nae_base, 7, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-8 is for Ethernet Jumbo frames (0x8870)
	 */
	FUNC1(nae_base, 8, 0, 0, 9, 1, 0x8870);
	/* we extract 31 bytes from the payload */
	FUNC2(nae_base, 8, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-9 is for MPLS Multicast frames (0x8848)
	 */
	FUNC1(nae_base, 9, 0, 0, 9, 1, 0x8848);
	/* we extract 31 bytes from the payload */
	FUNC2(nae_base, 9, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-10 is for IEEE 802.1ae MAC Security frames (0x88e5)
	 */
	FUNC1(nae_base, 10, 0, 0, 9, 1, 0x88e5);
	/* we extract 31 bytes from the payload */
	FUNC2(nae_base, 10, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-11 is for PTP frames (0x88f7)
	 */
	FUNC1(nae_base, 11, 0, 0, 9, 1, 0x88f7);
	/* PTP messages can be sent as UDP messages over
	 * IPv4 or IPv6; and as a raw ethernet message
	 * with ethertype 0x88f7. The message contents
	 * are the same for UDP or ethernet based encapsulations
	 * The header is 34 bytes long, and we extract
	 * it all out.
	 */
	FUNC2(nae_base, 11, 0, 31, 31, 2, 0, 0);

	/*
	 * entry-12 is for ethernet Link Control Protocol (LCP)
	 * used with PPPoE
	 */
	FUNC1(nae_base, 12, 0, 0, 9, 1, 0xc021);
	/* LCP packet consists of 1 byte of code, 1 byte of
	 * identifier and two bytes of length followed by
	 * data (upto length bytes).
	 * We extract 4 bytes from start of packet
	 */
	FUNC2(nae_base, 12, 0, 4, 0, 0, 0, 0);

	/*
	 * entry-13 is for ethernet Link Quality Report (0xc025)
	 * used with PPPoE
	 */
	FUNC1(nae_base, 13, 0, 0, 9, 1, 0xc025);
	/* We extract 31 bytes from packet start */
	FUNC2(nae_base, 13, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-14 is for PPPoE Session (0x8864)
	 */
	FUNC1(nae_base, 14, 0, 0, 9, 1, 0x8864);
	/* We extract 31 bytes from packet start */
	FUNC2(nae_base, 14, 0, 31, 0, 0, 0, 0);

	/*
	 * entry-15 - default entry
	 */
	FUNC1(nae_base, 15, 0, 0, 0, 0, 0x0000);
	/* We extract 31 bytes from packet start */
	FUNC2(nae_base, 15, 0, 31, 0, 0, 0, 0);

	/***********************************************
	 * program L4 CAM table
	 ***********************************************/

	/*
	 * entry-0 - tcp packets (0x6)
	 */
	FUNC3(nae_base, 0, 0, 0, 1, 0, 0, 0x6);
	/* tcp header is 20 bytes without tcp options
	 * We extract 20 bytes from tcp start */
	FUNC4(nae_base, 0, 0, 15, 15, 5);

	/*
	 * entry-1 - udp packets (0x11)
	 */
	FUNC3(nae_base, 1, 0, 0, 1, 0, 0, 0x11);
	/* udp header is 8 bytes in size.
	 * We extract 8 bytes from udp start */
	FUNC4(nae_base, 1, 0, 8, 0, 0);

	/*
	 * entry-2 - sctp packets (0x84)
	 */
	FUNC3(nae_base, 2, 0, 0, 1, 0, 0, 0x84);
	/* sctp packets have a 12 byte generic header
	 * and various chunks.
	 * We extract 12 bytes from sctp start */
	FUNC4(nae_base, 2, 0, 12, 0, 0);

	/*
	 * entry-3 - RDP packets (0x1b)
	 */
	FUNC3(nae_base, 3, 0, 0, 1, 0, 0, 0x1b);
	/* RDP packets have 18 bytes of generic header
	 * before variable header starts.
	 * We extract 18 bytes from rdp start */
	FUNC4(nae_base, 3, 0, 15, 15, 3);

	/*
	 * entry-4 - DCCP packets (0x21)
	 */
	FUNC3(nae_base, 4, 0, 0, 1, 0, 0, 0x21);
	/* DCCP has two types of generic headers of
	 * sizes 16 bytes and 12 bytes if X = 1.
	 * We extract 16 bytes from dccp start */
	FUNC4(nae_base, 4, 0, 15, 15, 1);

	/*
	 * entry-5 - ipv6 encapsulated in ipv4 packets (0x29)
	 */
	FUNC3(nae_base, 5, 0, 0, 1, 0, 0, 0x29);
	/* ipv4 header is 20 bytes excluding IP options.
	 * We extract 20 bytes from IPv4 start */
	FUNC4(nae_base, 5, 0, 15, 15, 5);

	/*
	 * entry-6 - ip in ip encapsulation packets (0x04)
	 */
	FUNC3(nae_base, 6, 0, 0, 1, 0, 0, 0x04);
	/* ipv4 header is 20 bytes excluding IP options.
	 * We extract 20 bytes from ipv4 start */
	FUNC4(nae_base, 6, 0, 15, 15, 5);

	/*
	 * entry-7 - default entry (0x0)
	 */
	FUNC3(nae_base, 7, 0, 0, 1, 0, 0, 0x0);
	/* We extract 20 bytes from packet start */
	FUNC4(nae_base, 7, 0, 15, 15, 5);
}