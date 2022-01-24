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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ptype ;
typedef  int /*<<< orphan*/  psm ;
typedef  int int32_t ;

/* Variables and functions */
 int SDP_DATA_SEQ8 ; 
 int SDP_DATA_UINT16 ; 
 int SDP_DATA_UUID16 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int SDP_UUID_PROTOCOL_BNEP ; 
 int SDP_UUID_PROTOCOL_L2CAP ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/  const*,int) ; 

int32_t
FUNC3(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	/* supported protocol types */
	uint16_t	 ptype[] = {
		0x0800,	/* IPv4 */
		0x0806,	/* ARP */
#ifdef INET6
		0x86dd,	/* IPv6 */
#endif
	};

	uint16_t	 i, psm, version = 0x0100,
			 nptypes = sizeof(ptype)/sizeof(ptype[0]),
			 nptypes_size = nptypes * 3;

	if (datalen != 2 || 18 + nptypes_size > 255 ||
	    buf + 20 + nptypes_size > eob)
		return (-1);

	FUNC2(&psm, data, sizeof(psm));

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(18 + nptypes_size, buf);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(6, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_L2CAP, buf);
	FUNC1(SDP_DATA_UINT16, buf);
	FUNC0(psm, buf);
	
	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(8 + nptypes_size, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_BNEP, buf);
	FUNC1(SDP_DATA_UINT16, buf);
	FUNC0(version, buf);
	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(nptypes_size, buf);
	for (i = 0; i < nptypes; i ++) {
		FUNC1(SDP_DATA_UINT16, buf);
		FUNC0(ptype[i], buf);
	}

	return (20 + nptypes_size);
}