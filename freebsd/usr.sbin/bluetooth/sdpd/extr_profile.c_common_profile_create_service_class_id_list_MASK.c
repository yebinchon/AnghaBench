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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int int32_t ;

/* Variables and functions */
 int SDP_DATA_SEQ8 ; 
 int SDP_DATA_UUID16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 

int32_t
FUNC2(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	int32_t	len = 3 * (datalen >>= 1);

	if (len <= 0 || len > 0xff || buf + 2 + len > eob)
		return (-1);

	FUNC1(SDP_DATA_SEQ8, buf);
	FUNC1(len, buf);

	for (; datalen > 0; datalen --) {
		FUNC1(SDP_DATA_UUID16, buf);
		FUNC0(*((uint16_t const *)data), buf);
		data += sizeof(uint16_t);
	}

	return (2 + len);
}