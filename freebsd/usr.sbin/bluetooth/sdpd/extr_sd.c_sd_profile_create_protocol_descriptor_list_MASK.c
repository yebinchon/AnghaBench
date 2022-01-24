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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int SDP_DATA_SEQ8 ; 
 int SDP_DATA_UUID16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_L2CAP ; 
 int /*<<< orphan*/  SDP_UUID_PROTOCOL_SDP ; 

__attribute__((used)) static int32_t
FUNC2(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	if (buf + 12 > eob)
		return (-1);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(10, buf);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(3, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_L2CAP, buf);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(3, buf);
	FUNC1(SDP_DATA_UUID16, buf);
	FUNC0(SDP_UUID_PROTOCOL_SDP, buf);

	return (12);
}