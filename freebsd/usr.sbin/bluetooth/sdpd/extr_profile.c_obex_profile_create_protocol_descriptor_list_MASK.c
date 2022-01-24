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
typedef  int const uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int SDP_DATA_SEQ8 ; 
 int SDP_DATA_UINT8 ; 
 int SDP_DATA_UUID16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const*) ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_L2CAP ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_OBEX ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_RFCOMM ; 

int32_t
FUNC2(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	if (datalen != 1 || buf + 19 > eob)
		return (-1);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(17, buf);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(3, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_L2CAP, buf);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(5, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_RFCOMM, buf);
	FUNC1(SDP_DATA_UINT8, buf);
	FUNC1(*data, buf);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(3, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_OBEX, buf);

	return (19);
}