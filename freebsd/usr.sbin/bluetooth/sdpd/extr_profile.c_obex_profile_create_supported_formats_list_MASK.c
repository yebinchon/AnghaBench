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
typedef  int int32_t ;

/* Variables and functions */
 int SDP_DATA_SEQ8 ; 
 int SDP_DATA_UINT8 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 

int32_t
FUNC1(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	int32_t	len = 2 * datalen;

	if (len <= 0 || len > 0xff || buf + 2 + len > eob)
		return (-1);

	FUNC0(SDP_DATA_SEQ8, buf);
	FUNC0(len, buf);

	for (; datalen > 0; datalen --) {
		FUNC0(SDP_DATA_UINT8, buf);
		FUNC0(*data++, buf);
	}

	return (2 + len);
}